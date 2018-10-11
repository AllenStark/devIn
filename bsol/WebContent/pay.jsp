<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支付页面</title>
<link href="css/pay.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/pay.js"></script>
</head>
<body>
	<!--头部-->
<header>
	<div id="header">
	<div class="header-L">
		<img src="order/pay.jpg" width="120px" height="70px" style="float: left;"/>
		<span class="logo-title">|我的收银台</span>
	</div>
	<div class="header-R">
		<span id="hot-line">唯一热线：95188</span>
	</div>
</div>
</header>
<!--内容-->

<div id="content">
	
	<div id="J_Order" class="order order-with-qr">
		<div class="order-wrapper">
			<div class="J_APop" >
				<!--二维码-->
				<div id="J_QrWrapper" class="qr-wrapper" style="width: 140px;float: left;">
					<canvas width="120" height="120" style="width: 140px; height: 140px;border: 1px red solid;">
						
					</canvas>
				</div>
			</div>
			
			<div class="order-title">
				淘宝网 -- 秋冬季新款毛呢包臀短裙a字裙子格子裙裤显瘦鱼尾裙半身裙女高腰
			</div>
			<br />
			<br />
			<div class="order-seller">
				卖家昵称：heitiefu
			</div>
			<span class="order-amount">
				<em>49.80</em> 元
			</span>
		</div>
		
	</div>
	
	<hr />
	<div style="clear: both;"></div>
<!--支付方法块-->
	<div id="J-payMethod" class="main-container">
		<div id="J-rcPaymentDisabled"></div>
		<form name="expressFastPayFrom" id="lightPayForm" action="" method="post" autocomplete="off">
			<div id="J-rcChannels" >
				<div >
					<ul id="J_MarketinglList"></ul>
					<ul class="saved-card-list" id="J_SavecardList">
						<li class="channel-pcredit row-container fn-clear" >
							<div class="row-basic fn-clear">
								<label class="channel-label" for="alicredit-0" >
									<span class="channel-tit channel-icon icon banklogo-PCREDIT_s"></span>
									<span class="channel-name" title="花呗" >花呗</span>
									<span class="pcredit-desc" ></span>
									<span class="pay-amount" >
										<span class="amount fn-hide" >
											<span >支付</span>
											<em class="amount-font-R16" >49.80</em>
											<span> 元</span>
										</span>
									</span>
								</label>
								<input checked="checked" class="channel-input" id="alicredit-0" name="apiCode" type="radio">
							</div>
							<div class="row-extra fn-hide" ></div>
						</li>
						<li class="channel-bank row-container fn-clear row-container-focus" >
							<div class="row-basic fn-clear">
								<label class="channel-label" for="ccb906-1" >
									<span class="pay-amount" >
										<span class="amount">
											<span>支付</span>
											<em class="amount-font-R16" >49.80</em>
											<span> 元</span>
										</span>
									</span>
									<span class="channel-tit channel-icon icon banklogo-CCB_s"></span>
									<span class="channel-name" title="中国建设银行" >中国建设银行</span>
									<span class="card-number" >**9007</span>
									<span class="card-type" >储蓄卡 | 快捷</span>
								</label>
							<input class="channel-input" id="ccb906-1" name="apiCode" type="radio" ></div>
							<div class="row-extra fn-hide" ></div>
						</li>
					</ul>
					<hr style="width: 92%;" />
					<div class="manage-list fn-clear" >
						<a class="manage-item manage-more fn-left" >
							<span>其他付款方式 </span>
						</a>
						<a class="J_XBox manage-item manage-item-xbox fn-left" href="https://cashiergtj.alipay.com:443/standard/fastpay/useNewCard.htm?orderId=1007bfffc1859ae84b12013075055400">
							添加快捷/网银付款
						</a>
					</div>
				</div>
			</div>
			<div style="clear: both;"></div>
			<div id="J-security" class="">

				<!-- Powered by Alipay Security --><input type="hidden" name="securityId" id="securityId" value="web|cashier_payment_3|b2b6d93e-1277-463f-bbaf-b59bdee94805RZ12">

				<div class="ui-securitycore ui-securitycore-tip J-securitycoreTip " >

					<div class="ui-form-item ui-form-item-success">
						<div class="ui-form-explain">安全设置检测成功！数字证书正在保护中，无需短信校验。</div>
						<!--<div class="J-checkResult fn-hide" data-status="">安全设置检测成功！数字证书正在保护中，无需短信校验。</div>-->
					</div>

				</div>
<br />
					<div class="edit-section">
						<div class="ui-form-item">
							<label class="ui-label" for="payPassword">
							            支付宝支付密码：
							</label>
							<div id="divPwd">
							<input type="password" tabindex="1" class="password" maxlength="1" reado><input type="password" tabindex="2" class="password"  maxlength="1"><input type="password" tabindex="3" class="password"  maxlength="1"><input type="password" tabindex="4" class="password"  maxlength="1"><input type="password" tabindex="5" class="password"><input type="password" tabindex="6" class="password" maxlength="1">
							</div>
						<span class="ui-form-other edit-link">
  						<a target="_blank" href="https://lab.alipay.com/user/passwordfind/index.htm?type=P">忘记密码？</a>       
						</span>
					</div>
				</div>
	</div>

	<div id="J-rcSubmit">
		<div class="ui-fm-item ui-fm-action j-submit">
			<input class="ui-button ui-button-lblue btn btn-primary" id="J_authSubmit" type="submit" value="确认付款">
		</div>
	</div>
	</form>
</div>
	</div>
	
<!--底部-->
<footer>
<div id="footer">
	<div class="copyright">
		<a href="https://fun.alipay.com/certificate/jyxkz.htm" target="_blank" >ICP证：沪B2-20150087</a>
	</div>
	<div class="server" id="ServerNum">
		cashier-30-6129 &nbsp;
	</div>
	<noscript>&lt;img src="//kcart.alipay.com/web/bi.do?ref=https%3A%2F%2Fcashier.alipay.com%2F&amp;pg=https%3A%2F%2Fcashier.alipay.com%2F%3Fseed%3Dsyslog-cashier%255Einfo%255Ejavascript.not.enabled&amp;v=0.9.2&amp;BIProfile=clk" alt="" width="1" height="1" /&gt;</noscript>
</div>
<div id="partner">
	<img src="https://zos.alipayobjects.com/rmsportal/IASErdnJnLbiMvSoxkaQ.png">
</div>
</footer>
</body>
</html>