$(function (){
	/*设置详细地址的隐藏与出现*/
	$(".address_detail").hide();
	$(".address").hover(function(){
		$(this).css("color","red");
		$(this).next().show();
	},function(){
		$(this).css("color","grey");
		$(this).next().hide();
	});
	/*设置头部的焦点事件*/
	$(".order_header div:first").css("background-color","indianred");
	$(".order_header div").hover(function(){
		$(this).css("background-color","indianred");
	},function(){
		$(".order_header div").css("background-color","red");
		if($("#all_order").css("display") == "block"){
			$(".order_header div:eq(0)").css("background-color","indianred");
		}
		if($("#order_pay").css("display") == "block"){
			$(".order_header div:eq(1)").css("background-color","indianred");
		}
		if($("#order_consignment").css("display") == "block"){
			$(".order_header div:eq(2)").css("background-color","indianred");
		}
		if($("#order_receipt").css("display") == "block"){
			$(".order_header div:eq(3)").css("background-color","indianred");
		}
		if($("#order_evaluate").css("display") == "block"){
			$(".order_header div:eq(4)").css("background-color","indianred");
		}
	});

	/*设置border边框的焦点事件*/
	$(".one_order").hover(function(){
		$(this).css("border","1px #c0c0c0 solid");
	},function(){
		$(this).css("border","1px #e6e8ea solid");
	});
	/*设置所有订单选项卡的隐藏与出现*/
	/*$("#all_order").css("display","none");*/
	$(".order_header_order").click(function(){
		$(".order_header div").css("background-color","red");
		$(this).css("background-color","indianred");
		
		$("#order_consignment").css("display","none");
		$("#order_receipt").css("display","none");
		$("#order_evaluate").css("display","none");
		$("#order_pay").css("display","none");
		$("#all_order").css("display","block");
	});
	/*设置待付款选项卡的隐藏与出现*/
	$("#order_pay").css("display","none");
	$(".order_header_pay").click(function(){
		$(".order_header div").css("background-color","red");
		$(this).css("background-color","indianred");
		
		$("#all_order").css("display","none");
		$("#order_consignment").css("display","none");
		$("#order_receipt").css("display","none");
		$("#order_evaluate").css("display","none");
		$("#order_pay").css("display","block");
	});
	/*设置待发货选项卡的隐藏与出现*/
	$("#order_consignment").css("display","none");
	$(".order_header_consignment").click(function(){
		$(".order_header div").css("background-color","red");
		$(this).css("background-color","indianred");
		
		$("#all_order").css("display","none");
		$("#order_receipt").css("display","none");
		$("#order_evaluate").css("display","none");
		$("#order_pay").css("display","none");
		$("#order_consignment").css("display","block");
	});
	/*设置待收货选项卡的隐藏与出现*/
	$("#order_receipt").css("display","none");
	$(".order_header_receipt").click(function(){
		$(".order_header div").css("background-color","red");
		$(this).css("background-color","indianred");
		
		$("#all_order").css("display","none");
		$("#order_consignment").css("display","none");
		$("#order_evaluate").css("display","none");
		$("#order_pay").css("display","none");
		$("#order_receipt").css("display","block");
	});
	/*设置待评价选项卡的隐藏与出现*/
	$("#order_evaluate").css("display","none");
	$(".order_header_evaluate").click(function(){
		$(".order_header div").css("background-color","red");
		$(this).css("background-color","indianred");
		
		$("#all_order").css("display","none");
		$("#order_consignment").css("display","none");
		$("#order_receipt").css("display","none");
		$("#order_pay").css("display","none");
		$("#order_evaluate").css("display","block");
	});

});
/*提醒发货*/
function remindShipment(orderNum){
	alert("您已提醒商家发货!");
	/*alert(orderNum);*/
}
/*取消订单*/
function cancleOrder(orderNum){
	var message = window.confirm("您确定要取消此订单?");
	if(message){
		window.location.href = "OrdersServlet?method=cancleOrder&orderNum="+orderNum;
	}
}
/*删除订单*/
function deleteOrder(orderNum){
	var message = window.confirm("您确定要删除此订单?");
	if(message){
		window.location.href = "OrdersServlet?method=deleteOrder&orderNum="+orderNum;
	}
}
/*确认收货*/
function confirmReceipt(orderNum){
	$.ajax({
		url:"OrdersServlet",
		type:"get",
		data:"method=chgOrderstatusToConfirmReceipt&orderNum="+orderNum,
		success:function(result){
			if($.trim(result) == "true"){
				alert("您已确认收货!");
				window.location.href="evaluateServlet?method=enterEvaluate&orderid="+orderNum;
			}
			else{
				alert("确认收货失败!");
			}
		},
		error:function(){
			alert("检测失败!");
		}
	});
}
