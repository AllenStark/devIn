<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>购物车页面</title>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/yhd.js" ></script>
		<script src="js/cart.js"></script>
		<link rel="stylesheet" type="text/css" href="css/yhd.css"/>
		<link rel="stylesheet" type="text/css" href="css/cart.css">
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
					<a href="login.html">登录</a>
					<a href="register.html">免费注册 </a>
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
		
		<div class="index_content" style="background-color: #f8f8f8;width: 100%;height: auto;">
			<div class="shopping_cart">
				<div class="shoppingcart_top">
					<div class="cart_L fl f12">
						<a href="index.html"><img src="images/shoppingcart.png"/></a>
					</div>
					<div class="cart_R fr">
						<input type="text" id="search" placeholder="请输入书号" />
					</div>
					<div class="clear"></div>
				</div>
			</div>
				<input type="hidden" id="userid" value="1">
				
				
			<c:if test="${!empty(cartItemList) }">
				<div class="cart_contents" style="background-color:white">
					<section class="cartMain">
				        <div class="cartMain_hd">
				            <ul class="order_lists cartTop">
				                <li class="list_chk_all">
				                    <!--所有商品全选-->
				                    <input type="checkbox" class="whole_check">
				                    全选
				                </li>
				                <li class="list_con">商品信息</li>
				                <li class="list_price">单价</li>
				                <li class="list_amount">数量</li>
				                <li class="list_sum">金额</li>
				                <li class="list_op">操作</li>
				            </ul>
				        </div>
				
				        <div class="cartBox">
				            <div class="order_content">
				            <c:forEach var="cart" items="${cartItemList}">
				                <ul class="order_lists">
				                    <li class="list_chk">
				                        <input type="checkbox" class="son_check" value="${cart.getBook().getIsbn() }">
				                    </li>
				                    <li class="list_con">
				                        <div class="list_img"><a href="javascript:;"><img src="images/1.png" alt=""><%-- ${cart.getBook().getCoverimg() } --%></a></div>
				                        <div class="list_text"><a href="javascript:;">${cart.getBook().getBookname() }</a></div>
				                    </li>
				                    <li class="list_price">
				                        <p class="price">${cart.getBook().getPrice()}</p>
				                    </li>
				                    <li class="list_amount">
				                        <div class="amount_box">
				                            <a href="javascript:;" class="reduce reSty">-</a>
				                            <input type="text" value="${cart.cartitemcount}" class="sum">
				                            <a href="javascript:;" class="plus">+</a>
				                        </div>
				                    </li>
				                    <li class="list_sum">
				                        <p class="sum_price">￥${cart.getSubtotal()}</p>
				                    </li>
				                    <li class="list_op">
				                        <p class="del"><a href="javascript:;" class="delBtn" onclick="deleteCartItem(${cart.getBook().getIsbn() })">移除商品</a></p>
				                    </li>
				                </ul>
				             </c:forEach>
				            </div>
				        </div>
				        <!--底部-->
				        <div class="bar-wrapper">
				            <div class="bar-right">
				            	<div class="delete_some"><a href="javascript:;" class="delete_confirm" onclick="deleteSome()">批量删除</a></div>
				                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
				                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
				                <div class="calBtn"><a href="javascript:;" onclick="account()">结算</a></div>
				            </div>
				        </div>
				    </section>
									
					</div>
			</c:if>
			<c:if test="${empty(cartItemList) }">
				
				<div class="cart_content">
					<p class="fl"><img src="images/cart_yhd.png"/></p>
					<div class="fl">
						<p>购物车还是空的呢，快去采购吧~</p>
						<p>或者登录查看之前加入的商品。</p>
						<p><input type="button" name="" id="" value="登录" /><input type="button" name="" id="" value="去逛逛" /></p>
					</div>	
				</div>
			</c:if>
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