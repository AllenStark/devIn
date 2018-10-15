package hstc.bsol.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hstc.bsol.pojo.Book;
import hstc.bsol.pojo.CartItem;
import hstc.bsol.service.BookService;
import hstc.bsol.service.CartItemService;

public class addCartItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Object objUserid = request.getSession().getAttribute("userid");
		if(objUserid != null) {
			String strIsbn = request.getParameter("isbn");
			long isbn = Long.parseLong(strIsbn);
			int userid = (int)objUserid;
			CartItem cartItem = new CartItem(userid,isbn,1);
			CartItemService cartItemService = new CartItemService();
			boolean result = cartItemService.insertCartItem(cartItem);
			if(result) {
				response.getWriter().print("添加成功,在购物车等着亲哦!");
			}
			else {
				cartItem = new CartItem(userid,isbn);
				int cartitemcount = cartItemService.queryCartitemcountByUseridAndIsbn(cartItem);
				cartItem = new CartItem(cartitemcount+1,userid,isbn);
				boolean message = cartItemService.updateCartItemCountByUseridAndIsbn(cartItem);
				if(message) {
					response.getWriter().print("添加成功,在购物车等着亲哦!");
				}
				else {
					response.getWriter().print("添加失败");
				}
			}
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

}
