<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单确认</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/yhd.js"></script>
	<link rel="stylesheet" type="text/css" href="css/yhd.css" />
	<link rel="stylesheet" type="text/css" href="css/checkOut.css" />
	
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script src="js/distpicker.data.js"></script>
	<script src="js/distpicker.js"></script>
	<script src="js/main.js"></script>

	<script type="text/javascript" src="js/orderconfirm.js"></script>
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
				<input type="text" placeholder="请输入关键字"/><input type="button" name="" id="" value="搜索" />
				<ul>
		            <li><a href="#">毛巾</a></li>
		            <li><a href="#">新鲜美食</a></li>
		            <li><a href="#">蛋糕</a></li>
		            <li><a href="#">洗发露</a></li>
		            <li><a href="#">衣服</a></li>
		            <li><a href="#">鞋子</a></li>
		        </ul>
			</div>
			
			<div class="index_content1_R">
				<a href="#">购物车</a>
				<div class="cart_hide f14">
					<p><b>1号店满199减100</b><span>共1件商品</span></p>
					<div>
						<img src="images/shop1.png" class="fl"/>
						<div id="">
							<span><b>宝贝许愿坊  童装女装套装</b></span>
							<p>深蓝 140码</p>
							<p><input type="button" name="" id="" value="-" /><input type="text" name="" id="" value="1" /><input type="button" name="" id="" value="+" /><span>￥190</span></p>
						</div>
					</div>
					<span>参加一项促销，节约成本￥100</span>
					<p><b>1号店</b><span>共1件商品</span></p>
					<div>
						<img src="images/shop2.png" class="fl"/>
						<div id="">
							<span><b>亨氏 乐维滋清乐2+2果汁</b></span>
							<p>草莓山楂枸杞</p>
							<p><input type="button" name="" id="" value="-" /><input type="text" name="" id="" value="1" /><input type="button" name="" id="" value="+" /><span>￥5.8</span></p>
						</div>
					</div>
					<p style="margin-top: 10px;"><b>珠韵首饰旗舰店</b><span>共1件商品</span></p>
					<div>
						<img src="images/shop3.png" class="fl" width="90px"/>
						<div id="">
							<span><b>珠韵首饰 大粒径 9.1-1·</b></span>
							<p>淡水白色近圆珍珠</p>
							<p><input type="button" name="" id="" value="-" /><input type="text" name="" id="" value="1" /><input type="button" name="" id="" value="+" /><span>￥758</span></p>
						</div>
					</div>
					<span>全场包邮</span>
				</div>
			</div>
		</div>
	</div>	
	<div class="container">
		<div class="checkout-box">
			<form id="checkoutForm" action="#" method="post">
				<!--收货地址部分-->
				<div>
					<div class="box-hd">
						<h2 class="title">收货信息</h2>
					</div>
					<hr />
					<div class="">
						<span class="receivingInfo">收货人:</span><br />
						<input type="text" name="consignee" id="consignee" />
					</div>
					<div>
						<span class="receivingInfo">联系电话:</span><br />
						<input type="text" name="phone" id="phone"/>
						<span style="color: red" id="phoneMess"></span>
					</div>
					<div class="form-inline">
						<span class="receivingInfo">收货地址:</span><br />
				      	<div data-toggle="distpicker">
					        <div class="form-group">
					          <label class="sr-only" for="province3">Province</label>
					          <select class="form-control" id="province3" data-province="浙江省" ></select>
					        </div>
					        <div class="form-group">
					          <label class="sr-only" for="city3">City</label>
					          <select class="form-control" id="city3" data-city="杭州市" ></select>
					        </div>
					        <div class="form-group">
					          <label class="sr-only" for="district3">District</label>
					          <select class="form-control" id="district3" data-district="西湖区" ></select>
					        </div>
					        <input type="text" name="address" id="detailedAddr" placeholder="详细地址" />
				      	</div>
				      	
			      	</div>
			    </div>
				<!--确认订单信息-->
				<div class="checkout-box-ft">
					<!-- 商品清单 -->
					<div id="checkoutGoodsList" class="checkout-goods-box">
						<div class="xm-box">
							<div class="box-hd">
								<h2 class="title">确认订单信息</h2>
							</div>
							<div class="box-bd">
								<dl class="checkout-goods-list">
									<dt class="clearfix">
		                                <span class="col col-1">商品名称</span>
		                                <span class="col col-2">单价</span>
		                                <span class="col col-3">数量</span>
		                                <span class="col col-4">小计（元）</span>
		                            </dt>
<!-- 单条订单项内容 -->
									<%-- <c:forEach var="" items="" varStatus=""> --%>
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img src="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!40x40.jpg" srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#">
															小米T恤 忍者米兔双截棍 军绿 XXL 
														</a>
													</div>
												</div>
	
												<div class="col col-2">39元</div>
												<div class="col col-3">1</div>
												<div class="col col-4">39元</div>
											</div>
										</dd>
									<%-- </c:forEach> --%>
<!-- 单条订单项内容END -->
								</dl>
								<div class="checkout-count clearfix">
										
	                           <!-- checkout-count-extend -->
	                           <div class="checkout-price">
	                               <ul>
	                                   <li>
	                                    	 订单总额：<span>244元</span>
	                                   </li>
	                                   <li>
	                                   	寄送至：<span id="addressOutput" style="color:black;"></span>
	                                   </li>
	                                   <li>
	                                   	收货人：<span id="receivingPerson" style="color:black;"></span>
	                                   </li>
	                               </ul>
	                               <p class="checkout-total">应付总额：<span><strong id="totalPrice">244</strong>元</span></p>
	                           </div>
	                           <!--  -->
	                       </div>
	                   </div>
	               </div>

							</div>
							<!-- 商品清单 END -->
							<input type="hidden" id="couponType" name="Checkout[couponsType]">
							<input type="hidden" id="couponValue" name="Checkout[couponsValue]">
							<div class="checkout-confirm">

								<a href="#" class="btn btn-lineDakeLight btn-back-cart" style="text-decoration: none;">返回购物车</a>
								<input type="submit" class="btn btn-primary" value="立即下单" id="checkoutToPay" />
							</div>
						</div>
					</div>

			</form>
			</div>
			<!--底部-->
			<div class="index_footer">
				<div class="index_footer_1st fl">
					<ul>
						<li>
							<img src="images/b1.png" />
							<div>正品保障</div>
							<p class="f14">正品行货 放心购买</p>
						</li>
						<li>
							<img src="images/b2.png" />
							<div>满38包邮</div>
							<p class="f14">满38包邮 免运费</p>
						</li>
						<li>
							<img src="images/b3.png" />
							<div>天天低价</div>
							<p class="f14">天天低价 畅选无忧</p>
						</li>
						<li>
							<img src="images/b4.png" />
							<div>准时送达</div>
							<p class="f14">收货时间由你做主</p>
						</li>
					</ul>
				</div>
				<div class="index_footer_2nd fl">
					<ul class="fl">
						<li><b>新手上路</b></li>
						<li>
							<a href="#">售后流程</a>
						</li>
						<li>
							<a href="#">购物流程</a>
						</li>
						<li>
							<a href="#">订购方式</a>
						</li>
						<li>
							<a href="#">隐私声明</a>
						</li>
						<li>
							<a href="#">推荐分享说明</a>
						</li>
					</ul>
					<ul class="fl">
						<li><b>配送与支付</b></li>
						<li>
							<a href="#">货到付款区域</a>
						</li>
						<li>
							<a href="#">配送支付查询</a>
						</li>
						<li>
							<a href="#">支付方式说明</a>
						</li>
					</ul>
					<ul class="fl">
						<li><b>会员中心</b></li>
						<li>
							<a href="#">资金管理</a>
						</li>
						<li>
							<a href="#">我的收藏</a>
						</li>
						<li>
							<a href="#">我的订单</a>
						</li>
					</ul>
					<ul class="fl">
						<li><b>服务保证</b></li>
						<li>
							<a href="#">退换货原则</a>
						</li>
						<li>
							<a href="#">售后服务保证</a>
						</li>
						<li>
							<a href="#">啊哈哈哈</a>
						</li>
					</ul>
					<ul class="fl">
						<li><b>联系他们</b></li>
						<li>
							<a href="#">找谁呢</a>
						</li>
						<li>
							<a href="#">投诉</a>
						</li>
						<li>
							<a href="#">迈迈迈</a>
						</li>
						<li>
							<a href="#">爱做尼</a>
						</li>
					</ul>
					<div class="fl index_footer2_R">
						<div class="fl index_footer2_R1">
							<a href="#"><img src="images/er.gif" /></a>
							<p><span>扫一扫关注我们！</span></p>
						</div>
						<div class="fl index_footer2_R2">
							<p>
								<img src="images/b_sh_1.png" />
								<span><a href="#">新浪微博</a></span>
							</p>
							<p>
								<img src="images/b_sh_2.png" />
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
						<li>
							<a href="#"><img src="images/b_1.gif" /></a>
						</li>
						<li>
							<a href="#"><img src="images/b_2.gif" /></a>
						</li>
						<li>
							<a href="#"><img src="images/b_3.gif" /></a>
						</li>
						<li>
							<a href="#"><img src="images/b_4.gif" /></a>
						</li>
						<li>
							<a href="#"><img src="images/b_5.gif" /></a>
						</li>
						<li>
							<a href="#"><img src="images/b_6.gif" /></a>
						</li>
					</ul>
				</div>
			</div>
</body>

</html>