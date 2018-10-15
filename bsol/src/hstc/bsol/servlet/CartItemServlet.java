package hstc.bsol.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import hstc.bsol.pojo.CartItem;
import hstc.bsol.service.CartItemService;

public class CartItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String methodName = request.getParameter("method");
		if(StringUtils.isBlank(methodName)) {
			throw new RuntimeException("没有method参数");
		}else {
			Class className = this.getClass();
			try {
				Method method = className.getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
				method.invoke(this,request, response);
			} catch (Exception e) {
				throw new RuntimeException("调用的方法"+methodName+"不存在");
			}
		}
	}
	//改变商品数量
	protected void chgCartCount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;setchar=UTF-8");
		Object objUserid = request.getSession().getAttribute("userid");
		if(objUserid != null) {
			String strIsbn = request.getParameter("isbn");
			long isbn = Long.parseLong(strIsbn);
			String count = request.getParameter("count");
			int cartitemcount = Integer.parseInt(count);
			int userid = (int)objUserid;
			CartItemService cartItemService = new CartItemService();
			CartItem cartItem = new CartItem(cartitemcount,userid,isbn);
			boolean result = cartItemService.updateCartItemCountByUseridAndIsbn(cartItem);
			if(result) {
				response.getWriter().print("true");
			}else {
				response.getWriter().print("false");
			}
		}else {
			response.sendRedirect("login.jsp");
		}
	}
	//删除购物项
	protected void deleteCartItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		int userid = (int)request.getSession().getAttribute("userid");
		String strIsbn = request.getParameter("isbn");
		long isbn = Long.parseLong(strIsbn);
		CartItemService cartItemService = new CartItemService();
		CartItem cartItem = new CartItem(userid,isbn);
		boolean result = cartItemService.deleteCartItemByUseridAndIsbn(cartItem);
		if(result) {
			response.sendRedirect("CartItemServlet?method=selectCartItemList");
		}else {
			response.getWriter().println("删除失败!");
		}
	}
	//批量删除购物项
	protected void deleteSomeCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String isbns = request.getParameter("isbns");
		System.out.println(isbns);
		String[] strIsbn = isbns.split(",");
		Long isbn = null;
		int userid = (int)request.getSession().getAttribute("userid");
		CartItemService cartItemService = new CartItemService();
		CartItem cartItem = null;
		for(int i=0;i<strIsbn.length;i++) {
			isbn = Long.parseLong(strIsbn[i]);
			cartItem = new CartItem(userid,isbn);
			cartItemService.deleteCartItemByUseridAndIsbn(cartItem);
		}
		response.sendRedirect("CartItemServlet?method=selectCartItemList");
	}
	//显示购物车列表
	protected void selectCartItemList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		Object objUserid = request.getSession().getAttribute("userid");
		if(objUserid != null) {
			CartItemService cartItemService = new CartItemService();
			int userid = (int)objUserid;
			List<CartItem> cartItemList =  cartItemService.queryCartItemByUserid(userid);
			request.setAttribute("cartItemList", cartItemList);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
	//结算
	protected void account(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String isbns = request.getParameter("isbns");
		String[] strIsbn = isbns.split(",");
		Long isbn = null;
		int userid = (int)request.getSession().getAttribute("userid");
		CartItemService cartItemService = new CartItemService();
		CartItem cartItem = null;
		Map<Long,CartItem> mapCart = new LinkedHashMap<>();
		for(int i=0;i<strIsbn.length;i++) {
			isbn = Long.parseLong(strIsbn[i]);
			cartItem = new CartItem(userid,isbn);
			CartItem cart = cartItemService.queryCartItemByUseridAndIsbn(cartItem);
			mapCart.put(isbn, cart);
		}
		String allPrice = request.getParameter("totalPrice");
		String totalPrice = allPrice.substring(1);
		request.setAttribute("mapCart", mapCart);
		request.setAttribute("totalPrice", totalPrice);
		request.getRequestDispatcher("orderconfirm.jsp").forward(request, response);
	}
	//搜索
	protected void searchCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		Object objUserid = request.getSession().getAttribute("userid");
		if(objUserid != null) {
			String strIsbn = request.getParameter("isbn");
			long isbn = Long.parseLong(strIsbn);
			int userid = (int)objUserid;
			CartItemService cartItemService = new CartItemService();
			CartItem cartItem = new CartItem(userid,isbn);
			List<CartItem> cartItemList =  cartItemService.queryCartItemsByUseridAndIsbn(cartItem);
			System.out.println(cartItemList.size());
			if(cartItemList.size()<1) {
				response.getWriter().println("您要查询的内容不存在");
			}else {
				request.setAttribute("cartItemList", cartItemList);
				request.getRequestDispatcher("cart.jsp").forward(request, response);
			}
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
	
}
