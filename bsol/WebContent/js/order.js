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
/*删除订单*/
function deleteOrder(orderNum){
	var message = window.confirm("确定删除此商品?");
	if(message){
		
	}
}
/*确认收货*/
function confirmReceipt(orderNum){
	alert("您已确认收货!");
	window.location.href="evalute.jsp";
}
