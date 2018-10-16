package hstc.bsol.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hstc.bsol.pojo.Book;
import hstc.bsol.pojo.OrderItem;
import hstc.bsol.pojo.Orders;
import hstc.bsol.service.BookService;
import hstc.bsol.service.OrderItemService;
import hstc.bsol.service.OrdersService;

public class OrderConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//获取插入orders表的数据
		int userid = (int)request.getSession().getAttribute("userid");
		String consignee = request.getParameter("consignee");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String total = request.getParameter("total");
		//调用业务逻辑
		OrdersService ordersService = new OrdersService();
		Orders orders = new Orders();
		orders.setUserid(userid);
		orders.setConsignee(consignee);
		orders.setPhone(phone);
		orders.setAddress(address);
		orders.setTotal(Double.parseDouble(total));
		boolean result = ordersService.insertOrder(orders);
		if(result) {
			System.out.println("订单表插入成功.");
		}
		//获取插入orderitem表的数据
		String[] isbn = request.getParameterValues("isbn");
		String[] orderitemcount = request.getParameterValues("orderitemcount");
		String[] subtotal = request.getParameterValues("subtotal");
		int num = isbn.length;
		//获取刚插入数据库的orderid
		int orderid = ordersService.queryOrderidByUseridAndMaxdate(userid);
		System.out.println(orderid);
		OrderItemService orderitemService = new OrderItemService();
		OrderItem orderitem = null;
		for (int i = 0; i < num; i++) {
			orderitem = new OrderItem(orderid, Long.parseLong(isbn[i]), Integer.parseInt(orderitemcount[i]), Double.parseDouble(subtotal[i])); 
			orderitemService.insertOrderitem(orderitem);
		}
		//传参
		request.getRequestDispatcher("payServlet?method=payEnter&orderid="+orderid).forward(request, response);
	}

}
