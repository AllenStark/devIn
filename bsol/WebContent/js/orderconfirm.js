$(document).ready(function(){
	$("#province3").change(function address() {
		var province = $("#province3").val();
		var city = $("#city3").val();
		var district = $("#district3").val();
		var detailedAddr = $("#detailedAddr").val();
		$("#addressOutput").html(province+city+district+detailedAddr);
	});
	$("#city3").change(function address() {
		var province = $("#province3").val();
		var city = $("#city3").val();
		var district = $("#district3").val();
		var detailedAddr = $("#detailedAddr").val();
		$("#addressOutput").html(province+city+district+detailedAddr);
	});
	$("#district3").change(function address() {
		var province = $("#province3").val();
		var city = $("#city3").val();
		var district = $("#district3").val();
		var detailedAddr = $("#detailedAddr").val();
		$("#addressOutput").html(province+city+district+detailedAddr);
	});
	$("#detailedAddr").change(function address() {
		var province = $("#province3").val();
		var city = $("#city3").val();
		var district = $("#district3").val();
		var detailedAddr = $("#detailedAddr").val();
		$("#addressOutput").html(province+city+district+detailedAddr);
	});
	$("#consignee").change(function address() {
		var consignee = $("#consignee").val();
		var phone = $("#phone").val();
		$("#receivingPerson").html(consignee+"  "+phone);
	});
	$("#phone").change(function address() {
		var consignee = $("#consignee").val();
		var phone = $("#phone").val();
		var pattern = /^((1[358][0-9])|(14[57])|(17[0678])|(19[7]))\d{8}$/;
		if(pattern.test(phone)){
			$("#receivingPerson").html(consignee+"  "+phone);
			$("#phoneMess").html("");
		}else{
			$("#phone").val("");
			$("#phone").focus();
			$("#phoneMess").html("*请输入正确的号码");
		}
	});
	$("#checkoutForm").submit(function(){
		if($("#phone").val()==""||$("#consignee").val()==""||$("#detailedAddr").val()==""){
			alert("请将收货信息填写完整!");
			return false;
		}else{
			return true;
		}
	});
	
})