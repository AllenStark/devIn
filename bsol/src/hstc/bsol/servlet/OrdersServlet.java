package hstc.bsol.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import hstc.bsol.pojo.OrderItem;
import hstc.bsol.pojo.Orders;
import hstc.bsol.pojo.PageBean;
import hstc.bsol.service.BookService;
import hstc.bsol.service.OrderItemService;
import hstc.bsol.service.OrdersService;

public class OrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = request.getParameter("method");
		if(StringUtils.isBlank(methodName)) {
			throw new RuntimeException("没有method参数");
		}
		else {
			Class className = this.getClass();
			try {
				Method method = className.getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
				method.invoke(this,request, response);
			} catch (Exception e) {
				throw new RuntimeException("调用的方法"+methodName+"不存在");
			}
		}
	}
	//显示订单页面信息
	protected  void queryAllOrders(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//过去用户id
		Object objUserid = request.getSession().getAttribute("userid");
		//判断用户id是否存在
		if(objUserid != null) {
			int userid = (int)objUserid;
			//获取当前页码数
			String currentPageNo = request.getParameter("currentPageNo");
			/*实例化PageBean对象*/
			PageBean<Orders> pageBean = new PageBean<>();
			if(currentPageNo == null) {
				currentPageNo = String.valueOf(pageBean.getCurrentPageNo());
			}
			//设置当前页码,初始化页码
			int pageNo = Integer.parseInt(currentPageNo);
			//回传当前页码到PageBean封装类中
			pageBean.setCurrentPageNo(pageNo);
			//调用业务逻辑层
			OrdersService ordersService = new OrdersService();
			int totalCount = ordersService.queryOrderCountsByUserid(userid);
			//回传总记录数到PageBean封装类中
			pageBean.setTotalCount(totalCount);
			//获取每页显示的记录数
			int pageSize = pageBean.getPageSize();
			pageBean.setTotalPageCount();
			pageBean.setUpPageNo();
			pageBean.setNextPageNo();
			//获取当前页码
			int indexPageNo = pageBean.getCurrentPageNo();
			//查询订单状态不为5的所有订单
			List<Orders> ordersList = ordersService.queryAllOrdersByUserid(userid, indexPageNo, pageSize);
			OrderItemService orderItemService = new OrderItemService();
			BookService bookService = new BookService();
			for(Orders order : ordersList) {
				order.setOrderItemList(orderItemService.queryOrderitemByOrderid(order.getOrderid()));
				for(OrderItem orderItem : order.getOrderItemList()) {
					orderItem.setBook(bookService.queryOneBookByIsbn(orderItem.getIsbn()));
				}
			}
			
			//查询订单状态1-4的记录数
			List<Integer> listCount = new ArrayList<>();
			for(int i=1;i<5;i++) {
				listCount.add(ordersService.queryOrdersCountByUseridAndOrderstatus(userid, i));
			}
			pageBean.setList(ordersList);
			request.setAttribute("pageBean", pageBean);
			request.setAttribute("listCount", listCount);
			request.setAttribute("ordersList", ordersList);
			request.getRequestDispatcher("order.jsp").forward(request, response);
				
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
	//根据订单号取消订单,订单状态由4变为5
	protected void cancleOrder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String strOrderNum = request.getParameter("orderNum");
		response.setContentType("text/html;charset=UTF-8");
		int orderid = Integer.parseInt(strOrderNum);
		OrdersService ordersService = new OrdersService();
		boolean result = ordersService.cancelOrderByOrderid(orderid);
		if(result) {
			response.sendRedirect("OrdersServlet?method=queryAllOrders");
		}
		else {
			response.getWriter().println("取消失败!");
		}
	}
	//根据订单号彻底删除订单
	protected void deleteOrder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		String strOrderNum = request.getParameter("orderNum");
		int orderid = Integer.parseInt(strOrderNum);
		OrdersService ordersService = new OrdersService();
		boolean result = ordersService.deleteOrderByOrderid(orderid);
		if(result) {
			response.sendRedirect("OrdersServlet?method=queryAllOrders");
		}
		else {
			response.getWriter().println("删除失败!");
		}
	}
	//确认收货,订单状态由3变为4
	protected void chgOrderstatusToConfirmReceipt(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		String strOrderNum = request.getParameter("orderNum");
		int orderid = Integer.parseInt(strOrderNum);
		OrdersService ordersService = new OrdersService();
		int orderstatus = 4;
		boolean result = ordersService.updateOrderstatusByOrderid(orderstatus, orderid);
		if(result) {
			response.getWriter().print("true");
		}
		else {
			response.getWriter().println("false");
		}
	}
}
