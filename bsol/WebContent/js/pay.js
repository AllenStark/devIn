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
	$(".password").keydown(function(event) {  
        if (event.keyCode == 8) { 
            //执行操作
       	 if($(this).val().length==0){
       		event.preventDefault();   
       		 var pre = $(this).prev();
       		 pre.focus();
       	 }
        }  
    });
	$('.password').bind('input propertychange',function(){
		if($(this).val().length!=0){
			$(this).next().focus();
		}
	});
	
})
