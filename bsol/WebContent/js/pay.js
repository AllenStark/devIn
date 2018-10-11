$(document).ready(function(){
	$(".channel-input:checked").parent().css("border","2px blue solid");
	$(".channel-input").change(function(){
		$(".channel-input").parent().css("border","");
		$(".channel-input:checked").parent().css("border","2px blue solid");
	});
	$(".password").click(function(){
		var pwd = $(".password");
		for(var i=0;i<pwd.length;i++){
			if(pwd.eq(i).val()==""){
				pwd.eq(i).focus();
				return;
			}
		}
	});
	$(".password").change(function(){
		if(!isNaN($(this).val())){
			$(this).next().focus();
		}else{
			$(this).val("");
			$(this).focus();
		}
	});
	$(".password").eq(5).blur(function(){
		$(".password").eq(0).focus();
	});
	$(".password").blur(function(){
		var pwd = $(".password");
		if(pwd.eq(0).val()==""){
			pwd.eq(0).focus();
		}else if($(this).val()==""){
				$(this).focus();
		}
	});
	
})
