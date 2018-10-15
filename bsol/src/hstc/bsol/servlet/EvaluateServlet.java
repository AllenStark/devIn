package hstc.bsol.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import hstc.bsol.pojo.OrderItem;
import hstc.bsol.service.BookService;
import hstc.bsol.service.OrderItemService;
 
public class EvaluateServlet extends HttpServlet {
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
	
	//进入评论页面
	protected void enterEvaluate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//得到订单id
		String strOrderid = request.getParameter("orderid");
		int orderid = Integer.parseInt(strOrderid);
		//调用业务逻辑
		OrderItemService orderItemService = new OrderItemService();
		BookService bookService = new BookService();
		List<OrderItem> orderList = orderItemService.queryOrderitemByOrderid(orderid);
		//通过订单的书籍编号得到书籍信息
		for (OrderItem orderItem : orderList) {
			orderItem.setBook(bookService.queryOneBookByIsbn(orderItem.getIsbn()));
		}
		//传递参数及转发
		request.setAttribute("orderid", orderid);
		request.setAttribute("orderList", orderList);
		request.getRequestDispatcher("evaluate.jsp").forward(request, response);
	}
	//发表评论
	protected void evaluationOperate(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		int orderid = 0;
		String[] strIsbn = new String[50];
		String[] evacontent = new String[50];
		String[] grade = new String[50];
		//请求信息request中的内容是否是:multipart/form-data
		boolean isMultipart =ServletFileUpload.isMultipartContent(request);
		//构造上传的路径
		String uploadFile = request.getSession().getServletContext().getRealPath("evaluate/");
		String[] fileTypeName = new String[50];
		
		//调用业务逻辑
		OrderItemService orderItemService = new OrderItemService();
		OrderItem orderitem = null;
		
		if(isMultipart){
			/**
			 * ServletFileUpload对象的创建,需要依赖于FileItemFactory接口,
			 * 通过接口名可知FileItemFactory是一个工厂,此接口的实现类为:
			 * DiskFileItemFactory类
			 */
			FileItemFactory factory = new DiskFileItemFactory();
			//通过FileItemFactory对象构造ServletFileUpload对象
			//此对象主要用于解析form表单中的每个字段的数据
			ServletFileUpload upload = new ServletFileUpload(factory);
			int i=0;
			int j=0;
			int k=0;
			int x=0;
			try {
				List<FileItem> items = upload.parseRequest(request);
				Iterator<FileItem> item = items.iterator();
				while(item.hasNext()){
					FileItem it = item.next();
					//判断是否是普通的表单字段
					if(it.isFormField()){
						//获取表单字段的name的属性名
						String filedName = it.getFieldName();
						//获取学号文本框的name属性值
						if(filedName.equals("isbn")){
							strIsbn[i] = it.getString("UTF-8");
							i++;
						}else if(filedName.equals("orderid")) {
							String strOrderid = it.getString("UTF-8");
							orderid = Integer.parseInt(strOrderid);
						}else if(filedName.equals("evacontent")) {
							evacontent[j] = it.getString("UTF-8");
							j++;
						}else if(filedName.equals("grade"+k)) {
							grade[k] = it.getString("UTF-8");
							k++;
						}
					}else{
						//文件表单字段,获取正在上传的文件名
						fileTypeName[x] = it.getName();
						//System.out.println(fileTypeName);
						if(fileTypeName[x]!=null && !fileTypeName[x].equals("")){
							File saveFile = new File(uploadFile,fileTypeName[x]);
							it.write(saveFile);
							System.out.println("图片上传成功!");
						}else {
							fileTypeName[x] = "";
						}
						x++;
					}
				}
				for (int l = 0; l < i; l++) {
					orderitem = new OrderItem(orderid, Long.parseLong(strIsbn[l]), evacontent[l], fileTypeName[l], Integer.parseInt(grade[l]));
					orderItemService.updateEvaluation(orderitem);
					System.out.println("ok");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	//request.getRequestDispatcher("").forward(request, response);
	}

}
