package hstc.bsol.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hstc.bsol.pojo.Book;
import hstc.bsol.pojo.OrderItem;
import hstc.bsol.pojo.Orders;
import hstc.bsol.service.BookService;
import hstc.bsol.service.OrderItemService;
import hstc.bsol.service.OrdersService;

public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//得到用户请求方法的参数
		String methodName= request.getParameter("method");
		//判断是否有传方法参数
		if(methodName==null ||"".equals(methodName)){
			throw new RuntimeException("没有传递Method参数");
		}
		//得到方法名称,通过反射调用方法
		Class className = this.getClass();
		try {
			Method method = className.getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, request,response);
		} catch (Exception e) {
			System.out.println("调用的方法"+methodName+"不存在.");
		}
	}
	//进入支付页面
	protected void payEnter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orderid = Integer.parseInt(request.getParameter("orderid"));
		OrderItemService orederitemService = new  OrderItemService();
		List<OrderItem> list = orederitemService.queryOrderitemByOrderid(orderid);
		OrdersService ordersService = new OrdersService();
		Orders orders = ordersService.queryOrdersByOrderid(orderid);
		double total = orders.getTotal();
		//传参
		long[] isbn = new long[50];
		for (int i = 0; i < list.size(); i++) {
			isbn[i] = list.get(i).getIsbn();
		}
		BookService bookservice = new BookService();
		Book book=null;
		String[] bookName = new String[50];
		for (int i = 0; i < list.size(); i++) {
			book = bookservice.queryOneBookByIsbn(isbn[i]);
			bookName[i] = book.getBookname();
		}
		request.setAttribute("orderid", orderid);
		request.setAttribute("bookName", bookName);
		request.setAttribute("total", total);
		request.getRequestDispatcher("pay.jsp").forward(request, response);
	}
	
	//在支付也弥漫点击确认支付按钮
	protected void payConfirm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] strPwd = request.getParameterValues("password");
		String pwd = "";
		for (int i = 0; i < strPwd.length; i++) {
			pwd = pwd+strPwd[i];
		}
		int orderid = Integer.parseInt(request.getParameter("orderid"));
		OrdersService ordersService = new OrdersService();
		if(pwd.equals("666666")) {
			ordersService.updateOrderstatusByOrderid(2, orderid);
			request.getRequestDispatcher("OrdersServlet?method=queryAllOrders").forward(request, response);
		}else {
			request.setAttribute("FalseMess", "密码错误,请重新输入!");
			request.getRequestDispatcher("payServlet?method=payEnter").forward(request, response);
		}
	}

}
