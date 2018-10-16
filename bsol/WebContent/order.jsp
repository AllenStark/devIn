<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单页面</title>
<script type="text/javascript" src="js/jquery.js" ></script>
<script type="text/javascript" src="js/yhd.js" ></script>
<script type="text/javascript" src="js/order.js" ></script>
<link rel="stylesheet" type="text/css" href="css/order.css"/>
<link rel="stylesheet" type="text/css" href="css/yhd.css"/>
<style type="text/css">
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<!--头部-->
		<header style="background-color: #f4f4f4;">
			<div class="index_header f12">
				<div class="index_header_L fl">
					<a href="#">配送至：广州市</a>
				</div>
				<div class="index_header_R fr">
					<span class="fl">您好！请</span>
					<a href="#">登录</a>
					<a href="#">免费注册 </a>
					<span class="seperate">|</span>
					<a href="#"> 我的订单</a>
					<span class="seperate">|</span>
					<a href="#"> 收藏夹</a>
					<div class="fl service">
						<a href="#" class="">客户服务 <img src="images/t_arrow.gif" class="img_rotate"/></a>
						<ul class="fl">
							<li><a href="#">包裹跟踪</a></li>
							<li><a href="#">在线退换货</a></li>
						</ul>
					</div>
					<a href="#">网站导航 </a>
					<span class="seperate">|</span>
					<span class="fl"> 关注我们：</span>
					<a href="#" class="indexH_img"><img src="images/sh1.png"/></a>
					<a href="#" class="indexH_img"><img src="images/sh2.png"/></a>
					<span class="seperate">|</span>
					<a href="#"> 手机版</a>
				</div>
			</div>
		</header>
		<!--搜索栏-->
		<div class="index_content">
			<div class="index_content_1st fl">
				<div class="index_content1_L fl">
					<img src="images/logo.png"/>
				</div>
				<div class="index_content1_M fl">
					<input type="text" placeholder="请输入关键字" /><input type="button" name="search" id="" value="搜索" />
					
				</div>
				<div class="index_content1_R">
					<a href="CartItemServlet?method=selectCartItemList">购物车</a>
				</div>
	
			</div>
		</div>	
		<!-- 订单头部 -->
		<div class="order_header" >
				<div class="order_header_order"><span class="order_header_order_text">所有订单</span></div>
				<div class="order_header_pay"><span class="order_header_pay_text">待付款</span>&nbsp;<span id="pay_count">${listCount.get(0) }</span></div>
				<div class="order_header_consignment"><span class="order_header_consignment_text">待发货</span>&nbsp;<span id="consignment_count">${listCount.get(1) }</span></div>
				<div class="order_header_receipt"><span class="order_header_receipt_text">待收货</span>&nbsp;<span id="receipt_count">${listCount.get(2) }</span></div>
				<div class="order_header_evaluate"><span class="order_header_evaluate_text">待评价</span>&nbsp;<span id="evaluate_count">${listCount.get(3) }</span></div>

		</div>
		<!-- 所有订单 -->
		<div class="cart_contents" id="all_order">
				<section class="cartMain">
			        <div class="cartMain_hd">
			            <ul class="order_lists cartTop">
			                <li class="list_con">宝贝</li>
			                <li class="list_price">单价</li>
			                <li class="list_amount">数量</li>
			                <li class="list_sum">实付款</li>
			                <li class="list_status">交易状态</li>
			                <li class="list_op">交易操作</li>
			            </ul>
			        </div>
			        <div class="order_page">
			        	<div>
			        		<c:if test="${pageBean.currentPageNo eq 1 }">
			        			<a id="upPage" href="javascript:;">上一页</a>
			        		</c:if>
			        		<c:if test="${pageBean.currentPageNo gt 1 }">
			        			<a id="upPage" href="OrdersServlet?method=queryAllOrders&currentPageNo=${pageBean.upPageNo }">上一页</a>
			        		</c:if>
			        		<c:if test="${pageBean.currentPageNo eq pageBean.totalPageCount }">
			        			<a id="nextPage" href="javascript:;">下一页</a>
			        		</c:if>
			        		<c:if test="${pageBean.currentPageNo lt pageBean.totalPageCount }">
			        			<a id="nextPage" href="OrdersServlet?method=queryAllOrders&currentPageNo=${pageBean.nextPageNo }">下一页</a>
			        		</c:if>
			        		<%-- <a id="upPage" href="OrdersServlet?method=queryAllOrders&currentPageNo=${pageBean.upPageNo }">上一页</a> --%>
			        		<%-- <a id="nextPage" href="OrdersServlet?method=queryAllOrders&currentPageNo=${pageBean.nextPageNo }">下一页</a> --%>
			        	</div>
			        </div>
					<c:if test="${!empty(pageBean.list) }">
						<c:forEach var="orders" items="${pageBean.list}">
						<table class="one_order" cellspacing="0">
					    	<tr class="order">
					    		<th colspan="4">
					    			<div class="order_message">
					    				<span class="order_time">${orders.chgdate }</span>
					    				<span class="order_num">订单号:&nbsp;</span>
					    				<span class="order_num_text">${orders.orderid}</span>
					    				<span class="list_sum">￥${orders.total}</span>
					    			</div>
					    			<div class="address_position">
						    			<div class="address">
						                		<span class="address_name">${orders.consignee}</span>
						                		<div class="dropdown_iron"></div> 
						                </div>
						                <div class="address_detail">
						                		<span>${orders.address}</span><br>
						                		<span>电话:&nbsp;${orders.phone}</span>
						              	</div>
					              	</div>
					    		</th>		    		
					    	</tr>
					    	<c:forEach var="orderItem" items="${orders.getOrderItemList()}">
					    		<tr class="product">
						    		<td>
						    			<div class="porduct_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
						            	<div class="porduct_text"><a href="javascript:;">${orderItem.getBook().getBookname() }</a></div>
						            	<div class="porduct_price"><p>￥<span>${orderItem.getBook().getPrice() }</span></p></div>
						            	<div class="porduct_amount"><span>${orderItem.orderitemcount }</span></div>
						            	<div class="porduct_subtotal"><span>${orderItem.subtotal }</span></div>
						            </td>
						    	</tr>
					    	</c:forEach>
					    	<tr class="porduct_sum_op">
				    			<td>
				    			<c:choose>
				    				<c:when test="${orders.orderstatus eq 1 }">
						            	<div class="porduct_op">
							            	<a href="payServlet?method=payEnter&orderid=${orders.orderid}">支付</a>
							            	<a href="javascript:;" onclick="cancleOrder(${orders.orderid})">|&nbsp;取消订单</a>
						                </div>
						                <div class="porduct_status_op">待付款</div>
					                </c:when>
					                <c:when test="${orders.orderstatus eq 2 }">
						            	<div class="porduct_op">
							            	<a href="javascript:void(o)" class="delBtn" name="remind_shipment" onclick="remindShipment('orderNum')">提醒发货</a>
						                </div>
					                	<div class="porduct_status_op">待发货</div>
					                </c:when>
					                <c:when test="${orders.orderstatus eq 3 }">
					                	<div class="porduct_op">
					                		<a href="javascript:;" onclick="confirmReceipt(${orders.orderid})">确认收货</a>
					                	</div>
					                	<div class="porduct_status_op">待收货</div>
					                </c:when >
					                <c:when test="${orders.orderstatus eq 4 }">
					                	<c:if test="${orders.getOrderItemList().get(0).getEvastatus() eq 0 }">
					                		<div class="porduct_op">
						                		<a href="evaluateServlet?method=enterEvaluate&orderid=${orders.orderid}" class="delBtn">评价</a>
						                	</div>
						                	<div class="porduct_status_op">待评价</div>
					                	</c:if>
					                	<c:if test="${orders.getOrderItemList().get(0).getEvastatus() eq 1 }">
					                		<div class="porduct_op">
						                		<a href="javascript:;" onclick="deleteOrder(${orders.orderid})">&nbsp;删除订单</a>
						                	</div>
						                	<div class="porduct_status_op">已评价</div>
					                	</c:if>
					                </c:when>
					             </c:choose>
					                <div class="porduct_sum"><span>总计:&nbsp;￥<span>${orders.total }</span></span></div>
					            </td>
					    	</tr>
					    </table>
					</c:forEach>
					
					</c:if>
			    	
				    <c:if test="${empty(pageBean.list) }">
					    <div class="cart_content">
							<p class="fl"><img src="images/cart_yhd.png"/></p>
							<div class="fl">
								<p>订单还是空的呢，快去下单吧~</p>
								<p>或者查看购物车加入的商品。</p>				
							</div>
						</div>	
					</c:if>
			   </section>				
		</div>
		<!-- 待付款 -->
		<div class="cart_contents" id="order_pay">
				<section class="cartMain">
			        <div class="cartMain_hd">
			            <ul class="order_lists cartTop">
			                <li class="list_con">宝贝</li>
			                <li class="list_price">单价</li>
			                <li class="list_amount">数量</li>
			                <li class="list_sum">实付款</li>
			                <li class="list_status">交易状态</li>
			                <li class="list_op">交易操作</li>
			            </ul>
			        </div>
			        <!-- <div class="order_page">
			        	<div>
			        		<input type="button" id="lastPage" value="上一页">
			        		<input type="button" id="nextPage" value="下一页">
			        	</div>
			        </div> -->
				<c:if test="${!empty(ordersList) }">
					<c:forEach var="orders" items="${ordersList }">
						<c:if test="${orders.orderstatus eq 1 }">
					    	<table class="one_order" cellspacing="0">
						    	<tr class="order">
						    		<th colspan="4">
						    			<div class="order_message">
						    				<span class="order_time">${orders.chgdate }</span>
						    				<span class="order_num">订单号:&nbsp;</span>
						    				<span class="order_num_text">${orders.orderid}</span>
						    				<span class="list_sum">￥${orders.total}</span>
						    			</div>
						    			<div class="address_position">
							    			<div class="address">
							                		<span class="address_name">${orders.consignee}</span>
							                		<div class="dropdown_iron"></div> 
							                </div>
							                <div class="address_detail">
							                		<span>${orders.address}</span><br>
							                		<span>电话:&nbsp;${orders.phone}</span>
							              	</div>
						              	</div>
						    		</th>		    		
						    	</tr>
						    	<c:forEach var="orderItem" items="${orders.getOrderItemList()}">
						    		<tr class="product">
							    		<td>
							    			<div class="porduct_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
							            	<div class="porduct_text"><a href="javascript:;">${orderItem.getBook().getBookname() }</a></div>
							            	<div class="porduct_price"><p>￥<span>${orderItem.getBook().getPrice() }</span></p></div>
							            	<div class="porduct_amount"><span>${orderItem.orderitemcount }</span></div>
							            	<div class="porduct_subtotal"><span>${orderItem.subtotal }</span></div>
							            </td>
							    	</tr>
						    	</c:forEach>
						    	<tr class="porduct_sum_op">
					    			<td>
						            	<div class="porduct_op">
							            	<a href="payServlet?method=payEnter&orderid=${orders.orderid}">支付</a>
							            	<a href="javascript:;" onclick="cancleOrder(${orders.orderid})">|&nbsp;取消订单</a>
						                </div>
						                <div class="porduct_status_op">待付款</div>
					                	<div class="porduct_sum"><span>总计:&nbsp;￥<span>${orders.total }</span></span></div>
						            </td>
						    	</tr>
						    </table>
						 </c:if>
						 
						 
					</c:forEach>
					<c:if test="${listCount.get(0) eq 0 }">
					    <div class="cart_content">
							<p class="fl"><img src="images/cart_yhd.png"/></p>
							<div class="fl">
								<p>没有符合条件的宝贝</p>
								<p>请尝试其他搜索条件</p>
							</div>
						</div>	
					</c:if>
				</c:if>
				
			</section>				
		</div>
		<!-- 待发货 -->
		<div class="cart_contents" id="order_consignment">
				<section class="cartMain">
			        <div class="cartMain_hd">
			            <ul class="order_lists cartTop">
			                <li class="list_con">宝贝</li>
			                <li class="list_price">单价</li>
			                <li class="list_amount">数量</li>
			                <li class="list_sum">实付款</li>
			                <li class="list_status">交易状态</li>
			                <li class="list_op">交易操作</li>
			            </ul>
			        </div>
			<!--         <div class="order_page">
			        	<div>
			        		<input type="button" id="lastPage" value="上一页">
			        		<input type="button" id="nextPage" value="下一页">
			        	</div>
			        </div> -->
					
				<c:if test="${!empty(ordersList) }">
					 <c:forEach var="orders" items="${ordersList }">
						<c:if test="${orders.orderstatus eq 2 }">
					    	<table class="one_order" cellspacing="0">
						    	<tr class="order">
						    		<th colspan="4">
						    			<div class="order_message">
						    				<span class="order_time">${orders.chgdate }</span>
						    				<span class="order_num">订单号:&nbsp;</span>
						    				<span class="order_num_text">${orders.orderid}</span>
						    				<span class="list_sum">￥${orders.total}</span>
						    			</div>
						    			<div class="address_position">
							    			<div class="address">
							                		<span class="address_name">${orders.consignee}</span>
							                		<div class="dropdown_iron"></div> 
							                </div>
							                <div class="address_detail">
							                		<span>${orders.address}</span><br>
							                		<span>电话:&nbsp;${orders.phone}</span>
							              	</div>
						              	</div>
						    		</th>		    		
						    	</tr>
						    	<c:forEach var="orderItem" items="${orders.getOrderItemList()}">
						    		<tr class="product">
							    		<td>
							    			<div class="porduct_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
							            	<div class="porduct_text"><a href="javascript:;">${orderItem.getBook().getBookname() }</a></div>
							            	<div class="porduct_price"><p>￥<span>${orderItem.getBook().getPrice() }</span></p></div>
							            	<div class="porduct_amount"><span>${orderItem.orderitemcount }</span></div>
							            	<div class="porduct_subtotal"><span>${orderItem.subtotal }</span></div>
							            </td>
							    	</tr>
						    	</c:forEach>
						    	<tr class="porduct_sum_op">
					    			<td>
						            	<div class="porduct_op">
							            	<a href="javascript:void(o)" class="delBtn" name="remind_shipment" onclick="remindShipment('orderNum')">提醒发货</a>
						                </div>
						                <div class="porduct_status_op">待发货</div>
					                	<div class="porduct_sum"><span>总计:&nbsp;￥<span>${orders.total }</span></span></div>
						            </td>
						    	</tr>
						    </table>
						 </c:if>
					</c:forEach>
					<c:if test="${listCount.get(1) eq 0 }">
					    <div class="cart_content">
							<p class="fl"><img src="images/cart_yhd.png"/></p>
							<div class="fl">
								<p>没有符合条件的宝贝</p>
								<p>请尝试其他搜索条件</p>
							</div>
						</div>	
					</c:if>
				</c:if>
			</section>				
		</div>
		
		<!-- 待收货 -->
		<div class="cart_contents" id="order_receipt">
				<section class="cartMain">
			        <div class="cartMain_hd">
			            <ul class="order_lists cartTop">
			                <li class="list_con">宝贝</li>
			                <li class="list_price">单价</li>
			                <li class="list_amount">数量</li>
			                <li class="list_sum">实付款</li>
			                <li class="list_status">交易状态</li>
			                <li class="list_op">交易操作</li>
			            </ul>
			        </div>
			       <!--  <div class="order_page">
			        	<div>
			        		<input type="button" id="lastPage" value="上一页">
			        		<input type="button" id="nextPage" value="下一页">
			        	</div>
			        </div> -->
					<c:if test="${!empty(ordersList) }">
					 	<c:forEach var="orders" items="${ordersList }">
							<c:if test="${orders.orderstatus eq 3 }">
								<table class="one_order" cellspacing="0">
							    	<tr class="order">
							    		<th colspan="4">
							    			<div class="order_message">
							    				<span class="order_time">${orders.chgdate }</span>
							    				<span class="order_num">订单号:&nbsp;</span>
							    				<span class="order_num_text">${orders.orderid}</span>
							    				<span class="list_sum">￥${orders.total}</span>
							    			</div>
							    			<div class="address_position">
								    			<div class="address">
								                		<span class="address_name">${orders.consignee}</span>
								                		<div class="dropdown_iron"></div> 
								                </div>
								                <div class="address_detail">
								                		<span>${orders.address}</span><br>
								                		<span>电话:&nbsp;${orders.phone}</span>
								              	</div>
							              	</div>
							    		</th>		    		
							    	</tr>
							    	<c:forEach var="orderItem" items="${orders.getOrderItemList()}">
							    		<tr class="product">
								    		<td>
								    			<div class="porduct_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
								            	<div class="porduct_text"><a href="javascript:;">${orderItem.getBook().getBookname() }</a></div>
								            	<div class="porduct_price"><p>￥<span>${orderItem.getBook().getPrice() }</span></p></div>
								            	<div class="porduct_amount"><span>${orderItem.orderitemcount }</span></div>
								            	<div class="porduct_subtotal"><span>${orderItem.subtotal }</span></div>
								            </td>
								    	</tr>
							    	</c:forEach>
							    	<tr class="porduct_sum_op">
						    			<td>
							            	<div class="porduct_op">
								            	<a href="javascript:;" onclick="confirmReceipt(${orders.orderid})">确认收货</a>
							                </div>
							                <div class="porduct_status_op">待收货</div>
						                	<div class="porduct_sum"><span>总计:&nbsp;￥<span>${orders.total }</span></span></div>
							            </td>
							    	</tr>
							    </table>
							 </c:if>
						 </c:forEach>
					 </c:if>
				    
				    <c:if test="${listCount.get(2) eq 0 }">
					    <div class="cart_content">
							<p class="fl"><img src="images/cart_yhd.png"/></p>
							<div class="fl">
								<p>没有符合条件的宝贝</p>
								<p>请尝试其他搜索条件</p>
							</div>
						</div>	
					</c:if>
			    </section>				
		</div>
		<!-- 待评价 -->
		<div class="cart_contents" id="order_evaluate">
				<section class="cartMain">
			        <div class="cartMain_hd">
			            <ul class="order_lists cartTop">
			                <li class="list_con">宝贝</li>
			                <li class="list_price">单价</li>
			                <li class="list_amount">数量</li>
			                <li class="list_sum">实付款</li>
			                <li class="list_status">交易状态</li>
			                <li class="list_op">交易操作</li>
			            </ul>
			        </div>
			       <!--  <div class="order_page">
			        	<div>
			        		<input type="button" id="lastPage" value="上一页">
			        		<input type="button" id="nextPage" value="下一页">
			        	</div>
			        </div> -->
					
					<c:if test="${!empty(ordersList) }">
					 	<c:forEach var="orders" items="${ordersList }">
							<c:if test="${orders.orderstatus eq 4 && orders.getOrderItemList().get(0).getEvastatus() eq 0}">
								<table class="one_order" cellspacing="0">
							    	<tr class="order">
							    		<th colspan="4">
							    			<div class="order_message">
							    				<span class="order_time">${orders.chgdate }</span>
							    				<span class="order_num">订单号:&nbsp;</span>
							    				<span class="order_num_text">${orders.orderid}</span>
							    				<span class="list_sum">￥${orders.total}</span>
							    			</div>
							    			<div class="address_position">
								    			<div class="address">
								                		<span class="address_name">${orders.consignee}</span>
								                		<div class="dropdown_iron"></div> 
								                </div>
								                <div class="address_detail">
								                		<span>${orders.address}</span><br>
								                		<span>电话:&nbsp;${orders.phone}</span>
								              	</div>
							              	</div>
							    		</th>		    		
							    	</tr>
							    	<c:forEach var="orderItem" items="${orders.getOrderItemList()}">
							    		<tr class="product">
								    		<td>
								    			<div class="porduct_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
								            	<div class="porduct_text"><a href="javascript:;">${orderItem.getBook().getBookname() }</a></div>
								            	<div class="porduct_price"><p>￥<span>${orderItem.getBook().getPrice() }</span></p></div>
								            	<div class="porduct_amount"><span>${orderItem.orderitemcount }</span></div>
								            	<div class="porduct_subtotal"><span>${orderItem.subtotal }</span></div>
								            </td>
								    	</tr>
							    	</c:forEach>
							    	<tr class="porduct_sum_op">
						    			<td>
					                		<div class="porduct_op">
						                		<a href="evaluateServlet?method=enterEvaluate&orderid=${orders.orderid}" class="delBtn">评价</a>
						                	</div>
						                	<div class="porduct_status_op">待评价</div>
						                	<div class="porduct_sum"><span>总计:&nbsp;￥<span>${orders.total }</span></span></div>
							            </td>
							    	</tr>
							    </table>
						    </c:if>
					    </c:forEach>
				    </c:if>
				    
				    <c:if test="${listCount.get(3) eq 0 }">
					    <div class="cart_content">
							<p class="fl"><img src="images/cart_yhd.png"/></p>
							<div class="fl">
								<p>没有符合条件的宝贝</p>
								<p>请尝试其他搜索条件</p>
							</div>
						</div>	
					</c:if>
			    </section>				
		</div>
	
		<!--底部-->
		<div class="index_footer">
			<div class="index_footer_1st fl">
				<ul>
					<li>
						<img src="images/b1.png"/>
						<div>正品保障</div>
						<p class="f14">正品行货 放心购买</p>
					</li>
					<li>
						<img src="images/b2.png"/>
						<div>满38包邮</div>
						<p class="f14">满38包邮 免运费</p>
					</li>
					<li>
						<img src="images/b3.png"/>
						<div>天天低价</div>
						<p class="f14">天天低价 畅选无忧</p>
					</li>
					<li>
						<img src="images/b4.png"/>
						<div>准时送达</div>
						<p class="f14">收货时间由你做主</p>
					</li>
				</ul>
			</div>
			<div class="index_footer_2nd fl">
				<ul class="fl">
					<li><b>新手上路</b></li>
					<li><a href="#">售后流程</a></li>
					<li><a href="#">购物流程</a></li>
					<li><a href="#">订购方式</a></li>
					<li><a href="#">隐私声明</a></li>
					<li><a href="#">推荐分享说明</a></li>
				</ul>
				<ul class="fl">
					<li><b>配送与支付</b></li>
					<li><a href="#">货到付款区域</a></li>
					<li><a href="#">配送支付查询</a></li>
					<li><a href="#">支付方式说明</a></li>
				</ul>
				<ul class="fl">
					<li><b>会员中心</b></li>
					<li><a href="#">资金管理</a></li>
					<li><a href="#">我的收藏</a></li>
					<li><a href="#">我的订单</a></li>
				</ul>
				<ul class="fl">
					<li><b>服务保证</b></li>
					<li><a href="#">退换货原则</a></li>
					<li><a href="#">售后服务保证</a></li>
					<li><a href="#">啊哈哈哈</a></li>
				</ul>
				<ul class="fl">
					<li><b>联系他们</b></li>
					<li><a href="#">找谁呢</a></li>
					<li><a href="#">投诉</a></li>
					<li><a href="#">迈迈迈</a></li>
					<li><a href="#">爱做尼</a></li>
				</ul>
				<div class="fl index_footer2_R">
					<div class="fl index_footer2_R1">
						<a href="#"><img src="images/er.gif"/></a>
						<p><span>扫一扫关注我们！</span></p>
					</div>
					<div class="fl index_footer2_R2">
						<p>
							<img src="images/b_sh_1.png"/>
							<span><a href="#">新浪微博</a></span>
						</p>
						<p>
							<img src="images/b_sh_2.png"/>
							<span><a href="#">腾讯微博</a></span>
						</p>
						<div class="f14">服务热线:</div>
						<b>400-123-4567</b>
					</div>
				</div>
			</div>
			<div class="index_footer_3rd fl f12">
				<div>沪ICP备16050468号，Copyright© 1号店网上超市 2007-2017，All Rights Reserved</div>
				<ul>
					<li><a href="#"><img src="images/b_1.gif"/></a></li>
					<li><a href="#"><img src="images/b_2.gif"/></a></li>
					<li><a href="#"><img src="images/b_3.gif"/></a></li>
					<li><a href="#"><img src="images/b_4.gif"/></a></li>
					<li><a href="#"><img src="images/b_5.gif"/></a></li>
					<li><a href="#"><img src="images/b_6.gif"/></a></li>
				</ul>
			</div>
		</div>
</body>
</html>