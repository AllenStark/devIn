<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/yhd.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/yhd.css"/>
		<script src="js/jquery.jqzoom-core(1).js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
/*jQzoom*/
.jqzoom{
  /*border:1px solid #BBB;*/
  float:left;
  position:relative;
  /*padding:0px;*/
  cursor:move;
}
.zoomdiv {
  z-index:  999;
  position        : absolute;
  top:0px;
  left:0px;
  width          : 300px;
  height         : 300px;
  background: #ffffff;
  border:1px solid #CCCCCC;
  display:none;
  text-align: center;
  overflow: hidden;
}
.jqZoomPup {
  z-index         : 999;
  visibility       : hidden;
  position        : absolute;
  top:0px;
  left:0px;
  width          : 1px;
  height         : 1px;
  border: 1px solid #aaa;
  /*background: #ffffff url(/images/shopping/zoomlens.gif) 50% top no-repeat;*/
  background: #ffffff 10%;
  opacity: 0.5;
  -moz-opacity: 0.5;
  -khtml-opacity: 0.5;
  filter: alpha(Opacity=50);
}
</style>
	</head>
	<body>
		<!--头部-->
		<header style="background-color: #f4f4f4;">
			<div class="index_header f12">
				<div class="index_header_L fl">
					<a href="#">配送至s：广州市</a>
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
					<a href="shoppingcart.html">购物车</a>
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
		
		<!--第二部分-->
		<div class="detail_content_2nd">
			<!--商品分类-->
			<div class="shopping_select">
			    <div class="index_content2_L det_classify f14 fl" style="position:absolute;color: white;top: 208px;z-index: 1000;">
					<h3 style="font-size: 20px;background-color: #fe3c3c;height: 36px;text-align: center;padding-top: 7px;">全部商品分类</h3>
					<ul style="display: none;">
		                <li><s><img src="images/nav1.png"/></s><a href="#">进口食品、生鲜</a></li>
		                <li><s><img src="images/nav2.png"/></s><a href="#">食品、饮料、酒</a></li>
		                <li><s><img src="images/nav3.png"/></s><a href="#">母婴、玩具、童装</a></li>
		                <li><s><img src="images/nav4.png"/></s><a href="#">家居、家庭清洁、纸品</a></li>
		                <li><s><img src="images/nav5.png"/></s><a href="#">美妆、个人护理、洗护</a></li>
		                <li><s><img src="images/nav6.png"/></s><a href="#">女装、内衣、中老年</a></li>
		                <li><s><img src="images/nav7.png"/></s><a href="#">鞋靴、箱包、腕表配饰</a></li>
		                <li><s><img src="images/nav8.png"/></s><a href="#">男装、户外、户外健身</a></li>
		                <li><s><img src="images/nav9.png"/></s><a href="#">手机、数码、电脑办公</a></li>
		                <li><s><img src="images/nav10.png"/></s><a href="#">礼品、卡、旅游、充值</a></li>
		           </ul>
				</div>
			    <div class="shopping_select_R fl" style="margin-left: 210px;">
			        <ul>
			            <li><a href="index.html" style="color: #FF4E41;">首页</a></li>
			            <li><a href="#" style="color: #FF4E41;">自营</a></li>
			            <li><a href="#">1号团</a></li>
			            <li><a href="#">1号超市</a></li>
			            <li><a href="#">女装</a></li>
			            <li><a href="#">美妆</a></li>
			            <li><a href="#">1号海购</a></li>
			            <li><a href="#">团购</a></li>		            
			        </ul>
			    </div>
			</div>
			<div class="detail_content_3rd fl">
				<!--<div class="classify_hide">
					
				</div>-->
				<div class="detail_start fl">
					<ul>
						<li><a href="#">食品饮料</a></li>
						<li><span>></span></li>
						<li><a href="#">休闲食品</a></li>
						<li><span>></span></li>
						<li><a href="#">休闲零食</a></li>
						<li><span>></span></li>
						<li><a href="#">卫龙</a></li>
						<li><span>></span></li>
						<li>食品饮料</li>
					</ul>
					<div class="detail_start_base fl" style="margin-bottom: 20px;">
						<div class="detail_base_L fl">
							
							<div class="item fl">
							
							
										
					            <a class="big-photo">
					            	<!--<div class="jqzoom">-->
					                	<img src="images/picPhoto.jpg"  id="bigImg"/>
					                	
					                <!--</div>-->
					            </a>
					            <a class="des-small">
					                
					            </a>
					            <a class="des-small">
					                
					            </a>
					            <a class="des-small">
					               
					            </a>
					            <a class="des-small">
					                
					            </a>
					        </div>
					       <div class="clear"></div>
							
							
							<div style="clear: both;"></div>
							<p class="fl">
								<span>商品编号&nbsp;6626834&nbsp;|</span>
								<a href="#">
									<i>
										<img src="images/detail_heart1.png" class="focus_off"/>
										<img src="images/detail_heart2.png" class="focus_on"/></i>关注
								</a>
							</p>
						</div>
						<div class="detail_base_M fl">
							<h4><font>自营</font>卫龙 辣条 辣片 休闲零食 方便食品 亲嘴烧 红烧牛肉味96g/袋</h4>
							<a href="#"><img src="images/price.png"/></a>
							<p><span>促销</span><font>满折</font><span>满2件，总价打7.50折</span><a href="#">立即参加</a><a href="#"class="fr detail_scan">共<b style="color: #ff875a;;">1</b>项，展开查看 v</a></p>
							<p><span>选择口味: </span><a href="#"><img src="images/choose.png"/></a></p>
							<p>
								<span>送货至</span>
								<!--<input type="text" name="" id="address_down" value="广东广州市南沙区城区" />-->
								<select name="">
									<option value="">广东广州市南沙区城区</option>
								</select>
								<b style="color: black;">有货</b>，23:00前下单,预计<b>明天(09月05日)</b>送达
								<br />
								<span>由  1号店  发货, 并提供售后服务<span>支持</span><a href="#"> 满86元免基础运费  准时达  211限时达</a></span><br />
								<input type="text" name="" id="detail_count" value="1" /><i><img src="images/detail_top.png" class="fl count_plus"/><img src="images/detail_down.png" class="fl count_minus"/></i>
								<input type="button" name="" id="" value="加入购物车" /><a href="#">降价通知</a>
							</p>
							<p style="border-bottom: none;">
								<span>保障</span>
								<a href="#"><img src="images/detail_support.png"/>支持7天无理由退货</a>
								<a href="#"><img src="images/detail_support.png"/>正品保障</a>
							</p>
							<div class="discount f12">
								<p><span>满折</span>共<b>1</b>项，满折信息<a href="#"class="fr detail_close" style="color: #666666;">关闭</a></p>
								<p>满2件，总价打7.50折<a href="#">立即参加</a></p>
							</div>
							<div class="address_model f12 detail_hide" style="width: 500px;">
								<p><span>选择新地址</span><i class="fr"><img src="images/close.gif"/></i></p>
								<div class="address_top">
									<ul>
										<li class="address_top_chg"><a>广东</a></li>
										<li><a>广州市</a></li>
										<li><a>南沙区</a></li>
										<li><a>城区</a></li>
									</ul>
								</div>	
								<div class="address_bottom">
									
									
									<div class="address_province fl">
										<ul>
											<li>华北</li>
											<li>|</li>
											<li><a href="#">北京</a></li>
											<li><a href="#">天津</a></li>
											<li><a href="#">河北</a></li>
											<li><a href="#">山西</a></li>
											<li><a href="#">内蒙古</a></li>
										</ul>
										<div class="clear"></div>
										<ul>
											<li>华东</li>
											<li>|</li>
											<li><a href="#">上海</a></li>
											<li><a href="#">江苏</a></li>
											<li><a href="#">浙江</a></li>
											<li><a href="#">安徽</a></li>
											<li><a href="#">福建</a></li>
											<li><a href="#">山东</a></li>
										</ul>
										<div class="clear"></div>
										<ul>
											<li>华南</li>
											<li>|</li>
											<li class="address_pink"><a href="#">广东</a></li>
											<li><a href="#">广西</a></li>
											<li><a href="#">湖北</a></li>
											<li><a href="#">湖南</a></li>
											
										</ul>
										<div class="clear"></div>
										<ul>
											<li>华中</li>
											<li>|</li>
											<li><a href="#">江西</a></li>
											<li><a href="#">河南</a></li>
											<li><a href="#">湖北</a></li>
											<li><a href="#">湖南</a></li>
											
										</ul>
										<div class="clear"></div>
										<ul>
											<li>西南</li>
											<li>|</li>
											<li><a href="#">重庆</a></li>
											<li><a href="#">四川</a></li>
											<li><a href="#">贵州</a></li>
											<li><a href="#">云南</a></li>
											<li><a href="#">西藏</a></li>
											
										</ul>
										<div class="clear"></div>
										<ul>
											<li>东北</li>
											<li>|</li>
											<li><a href="#">辽宁</a></li>
											<li><a href="#">吉林</a></li>
											<li><a href="#">黑龙江</a></li>
											
											
										</ul>
										<div class="clear"></div>
										<ul>
											<li>西北</li>
											<li>|</li>
											<li><a href="#">陕西</a></li>
											<li><a href="#">甘肃</a></li>
											<li><a href="#">青海</a></li>
											<li><a href="#">宁夏</a></li>
											<li><a href="#">新疆</a></li>
										</ul>
										<div class="clear"></div>
									</div>
									<article class="clear"></article>
									<div class="address_city fl detail_hide">
										<ul>
											<li class="address_pink"><a href="#">广州市</a></li>
											<li><a href="#">深圳市</a></li>
											<li><a href="#">珠海市</a></li>
											<li><a href="#">汕头市</a></li>
											<li><a href="#">韶关市</a></li>
											<li><a href="#">河源市</a></li>
											<li><a href="#">梅州市</a></li>
										</ul>
										<div class="clear"></div>
										<ul>
											<li><a href="#">惠州市</a></li>
											<li><a href="#">汕尾市</a></li>
											<li><a href="#">东莞市</a></li>
											<li><a href="#">中山市</a></li>
											<li><a href="#">江门市</a></li>
											<li><a href="#">佛山市</a></li>
											<li><a href="#">阳江市</a></li>
										</ul>
										<div class="clear"></div>
										<ul>
											<li><a href="#">湛江市</a></li>
											<li><a href="#">茂名市</a></li>
											<li><a href="#">肇庆市</a></li>
											<li><a href="#">云浮市</a></li>
											<li><a href="#">清远市</a></li>
											<li><a href="#">潮州市</a></li>
											<li><a href="#">揭阳市</a></li>
										</ul>
										<div class="clear"></div>
									</div>	
									<article class="clear"></article>
									<div class="address_area fl detail_hide">
										<ul>
											<li><a href="#">广州大学城</a></li>
											<li><a href="#">天河区</a></li>
											<li><a href="#">海珠区</a></li>
											<li><a href="#">荔湾区</a></li>
											<li><a href="#">越秀区</a></li>
											<li><a href="#">番禺区</a></li>
											<li><a href="#">花都区</a></li>
											<li><a href="#">白云区</a></li>
											<li class="address_pink"><a href="#">南沙区</a></li>
											<li><a href="#">黄埔区</a></li>
											<li><a href="#">增城区</a></li>
											<li><a href="#">从化区</a></li>
										</ul>
										<div class="clear"></div>
									</div>
									<article class="clear"></article>
									<div class="address_town fl detail_hide">
										<ul>
											<li class="address_pink"><a href="#">城区</a></li>
											<li><a href="#">龙穴岛</a></li>
											<li><a href="#">黄阁镇</a></li>
											<li><a href="#">东涌镇</a></li>
											<li><a href="#">大岗镇</a></li>
											<li><a href="#">榄核镇</a></li>
											<li><a href="#">横沥镇</a></li>
											<li><a href="#">万顷沙镇</a></li>
										</ul>
										<div class="clear"></div>
									</div>
									<article class="clear"></article>
								</div>
							</div>	
						</div>
						<div class="detail_base_R fl">
							<div class="detail_baseR_chg">
								<p>看了还看
									<a>
										<span>
											<img src="images/chg1.png"class="chg1"/>
											<img src="images/chg2.png"class="chg2"/>
											换一批
										</span>
									</a>
								</p>
								<ul>
									<li>
										<img src="images/qzs1.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
									<li>
										<img src="images/qzs2.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
									<li>
										<img src="images/qzs3.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
								</ul>
								<ul style="display: none;">
									<li>
										<img src="images/qzs2.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
									<li>
										<img src="images/qzs3.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
									<li>
										<img src="images/qzs1.png"/>
										<p><a href="#">卫龙 休闲零食 辣条···</a></p>
										<span><a href="#">¥32.9</a></span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="detail_content_L fl">
						<div class="">
							<a href="#"><img src="images/wlshop.png"/></a>
							<p>看了本商品的用户最终购买了</p>
							<ul>
								<li>
									<i><img src="images/qzs1.png"/></i>
									<p><a href="#">卫龙 休闲零食 辣条···</a></p>
									<span><a href="#">¥32.9</a></span><br />
									<input type="button" name="" id="detail_scan" value="查看详情" />
								</li>
								<li>
									<i><img src="images/qzs2.png"/></i>
									<p><a href="#">卫龙 休闲零食 辣条···</a></p>
									<span><a href="#">¥32.9</a></span><br />
									<input type="button" name="" id="detail_scan" value="查看详情" />
								</li>
								<li>
									<i><img src="images/qzs3.png"/></i>
									<p><a href="#">卫龙 休闲零食 辣条···</a></p>
									<span><a href="#">¥32.9</a></span><br />
									<input type="button" name="" id="detail_scan" value="查看详情" />
								</li>
								<li>
									<i><img src="images/qzs1.png"/></i>
									<p><a href="#">卫龙 休闲零食 辣条···</a></p>
									<span><a href="#">¥32.9</a></span><br />
									<input type="button" name="" id="detail_scan" value="查看详情" />
								</li>
								<li>
									<i><img src="images/qzs2.png"/></i>
									<p><a href="#">卫龙 休闲零食 辣条···</a></p>
									<span><a href="#">¥32.9</a></span><br />
									<input type="button" name="" id="detail_scan" value="查看详情" />
								</li>
							</ul>
						</div>
					</div>
					<div class="detail_content_R fr">
						<div class="detail_contentR_top">
							
						</div>
						<div class="detail_select">
							<div class="detail_selectcard">
								<div class="detail_select_top">
									<ul>
										<li class="detail_selected detail_select1"><a>商品介绍</a></li>
										<li class="detail_select2"><a>评价<font style="font-size: 13px;color: #ff3c3c;"> 2.1万+</font></a></li>
										<li class="detail_select3"><a>规格及包装</a></li>
										<li class="detail_select4"><a>售后服务</a></li>
									</ul>
								</div>
								<div>	
								
									<div class="detail_select_chg fl">
										<div class="f14">
											<p><font>规格参数</font><a href="#">查看更多>></a></p>
											<p><span>品牌：卫龙</span>商品名称：卫龙 辣条 辣片 休闲零食 方便食品 亲嘴烧 红烧牛肉味96g/袋商品编号：6626834</p>
											<p><span>商品毛重：130.00g</span>商品产地：河南漯河</p>
										</div>
										<div class="">
											<p><img src="images/xq (1).jpg"/></p>
											<p><img src="images/xq (2).jpg"/></p>
											<p><img src="images/xq (3).jpg"/></p>
											<p><img src="images/xq (4).jpg"/></p>
											<p><img src="images/xq (5).jpg"/></p>
											<p><img src="images/xq (6).jpg"/></p>
										</div>
										
										<div class="detail_promise">
											<h5>1号店承诺</h5>
											<p>1号店平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！</p>
											<p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若没有及时更新，请大家谅解！</p>
											<h5>全国联保</h5>
											<p>凭质保证书及1号店发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由1号店联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。1号店还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>
											<h5>权利声明</h5>
											<p>1号店上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是1号店重要的经营资源，未经许可，禁止非法转载使用。</p>
											<p>注：本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
											<h5>价格说明</h5>
											<p><b>1号店价：</b>商品在1号店平台上，不参加降价让利促销团购等活动时的常规销售价格。</p>
											<p><b>参考价：</b>商品展示的参考价，可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在1号店平台曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价、销售商门店曾经展示过的销售价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
										</div>
									</div>
									<div class="detail_select_chg2 fl detail_hide">
										<div class="detail_chg2_top fl">
											<div class="detail_ch2_L fl">
												<p><span>好评率</span></p>
												<p><b>99</b><span>%</span></p>
												<p><font>共2.2万+人评论</font></p>
											</div>
											<div class="fl">大家觉得</div>
											<img src="images/detail_saperate.png" class="fl"/>
											<div class="detail_ch2_R fl">
												<ul>
													<li>美味可口(23)</li>
													<li>嚼劲十足(3)</li>
													<li>漂亮好看(1)</li>
													<li>味道俱佳(1)</li>
													<li>味道正宗(1)</li>
												</ul>
											</div>
										</div>
										<div class="detail_chg2_evaluate fl">
											<div class="evaluate_top fl">
												<ul>
													<li class="evaluate_top_chg evaluate_all"><a>全部(2.2万+)</a></li>
													<li class="evaluate_top_no evaluate_pic"><a>晒单(600+)</a></li>
													<li class="evaluate_top_no evaluate_add"><a>追加(40+)</a></li>
													<li class="evaluate_top_no evaluate_good"><a>好评(2.1万+)</a></li>
													<li class="evaluate_top_no evaluate_soso"><a>中评(60+)</a></li>
													<li class="evaluate_top_no evaluate_bad"><a>差评(50+)</a></li>
												</ul>
											</div>
											<div class="evaluate_bottom fl f12">
												<div class="detail_chg2_all">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
												<div class="detail_chg2_pic detail_hide">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>hhhhhhhh</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>昨天晚上下单的 今天早上就到了 速度不错 是物流 不过就是要运费</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
												<div class="detail_chg2_add detail_hide">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>hhhhhhhh</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>辣条收到，一点辣味都没有，这叫辣条吗？</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
												<div class="detail_chg2_good detail_hide">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>hhhhhhhh</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>吃了还蛮好吃的，偷偷买的，不知道吃了会不会不卫生。希望多点优惠就好了。</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
												<div class="detail_chg2_soso detail_hide">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>hhhhhhhh</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>和超市买的口感一样，生产日期为20180319，挺新鲜的，物流只用了几个小时，超快。遗憾的是与同一张订单中另一包1250克的口味发的一样</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
												<div class="detail_chg2_bad detail_hide">
													<div class="evaluate_content fl">
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>hhhhhhhh</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_bad.png"/></p>
																<p><span>内容：</span><font>气死我了，居然是随机口味，我还以为是混合口味！又不让退，不知道吃到什么时候！</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
														<div class="evaluate_model fl">
															<div class="evaluate_contentL fl">
																<p><img src="images/eva_user.png"/></p>
																<span>大***鲸</span>
															</div>
															<div class="evaluate_contentR fl">
																<p><span>评分：</span><img src="images/eva_good.png"/></p>
																<p><span>内容：</span><font>不错!</font></p>
																<p><span>晒单：</span><img src="images/qzs2.png"width="47px"height="47px"/></p>
																<div class="">
																	<p>2018-08-20 12:19:44</p>
																	<p>追加：不错</p>
																</div>
																<p><span>红烧牛肉味96g    2018-08-20 11:54:11</span></p>
															</div>
														</div>
													</div>
												</div>
											</div>
											
										</div>
										
									</div>
									<div class="detail_select_chg3 fl detail_hide">
										<div>
											<table border="0" cellspacing="" cellpadding="">
												<tr><th colspan="2"><b>主体</b></th></tr>
												<tr>
													<td>类别</td>
													<td>豆干；豆类</td>
												</tr>
												<tr>
													<td>口味</td>
													<td>其它</td>
												</tr>
												<tr>
													<td>包装</td>
													<td>袋装</td>
												</tr>
												<tr>
													<td>国别</td>
													<td>国产</td>
												</tr>
												<tr>
													<td>保质期</td>
													<td>5个月</td>
												</tr>
												<tr>
													<td>生产许可证号</td>
													<td>SC10741119100167</td>
												</tr>
												<tr>
													<td>净含量（kg）</td>
													<td>0.096</td>
												</tr>
											</table>
											<p><b>包装清单</b></p>
											<span>卫龙 辣条 辣片 休闲零食 方便食品 红烧牛肉味亲嘴烧96g/袋*1</span>
										</div>
										<div class="detail_promise">
											<h5>1号店承诺</h5>
											<p>1号店平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！</p>
											<p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若没有及时更新，请大家谅解！</p>
											<h5>全国联保</h5>
											<p>凭质保证书及1号店发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由1号店联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。1号店还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>
											<h5>权利声明</h5>
											<p>1号店上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是1号店重要的经营资源，未经许可，禁止非法转载使用。</p>
											<p>注：本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
											<h5>价格说明</h5>
											<p><b>1号店价：</b>商品在1号店平台上，不参加降价让利促销团购等活动时的常规销售价格。</p>
											<p><b>参考价：</b>商品展示的参考价，可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在1号店平台曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价、销售商门店曾经展示过的销售价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
										</div>
									</div>
									<div class="detail_select_chg4 fl detail_hide">
										<div class="detail_promise">
											<h5>1号店承诺</h5>
											<p>1号店平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！</p>
											<p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若没有及时更新，请大家谅解！</p>
											<h5>全国联保</h5>
											<p>凭质保证书及1号店发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由1号店联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。1号店还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>
											<h5>权利声明</h5>
											<p>1号店上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是1号店重要的经营资源，未经许可，禁止非法转载使用。</p>
											<p>注：本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
											<h5>价格说明</h5>
											<p><b>1号店价：</b>商品在1号店平台上，不参加降价让利促销团购等活动时的常规销售价格。</p>
											<p><b>参考价：</b>商品展示的参考价，可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在1号店平台曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价、销售商门店曾经展示过的销售价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
										</div>
									</div>

								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>	
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
<script type="text/javascript" src="js/jquery.imagezoom.min.js" ></script>
<script type="text/javascript">

$(".jqzoom").jqueryzoom({
    xzoom: 560, //放大图的宽度(默认是 200)
    yzoom: 400, //放大图的高度(默认是 200)
    offset: 10, //离原图的距离(默认是 10)
    position: "right", //放大图的定位(默认是 "right")
    preload: 1
});

