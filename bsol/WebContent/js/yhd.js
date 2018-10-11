$(document).ready(function(){
	
	//首页下拉列表
//	$(".index_header_R ul").hover(function(){
//		$(".index_header_R ul").css("height","80px");
//		$(".index_header_R>ul").css("background-color","white");
//		$(".index_header_R ul li").show();
//	},function(){
//		$(".index_header_R ul").css("height","29px");
//		$(".index_header_R ul li").hide();
//		$(".index_header_R ul").css("background-color","#f4f4f4");
//	});

	$(".service").hover(function(){
		$(this).find("ul").show();
		$(this).css({"border-right":"1px #cccccc solid","border-left":"1px #cccccc solid","background-color":"white"});
		$(this).find("ul").css({"border":"1px #cccccc solid","border-top":"none"});
	},function(){
		$(this).find("ul").hide();
		$(this).css({"border-color":"transparent","background-color":"transparent"});
	})
	
	//正文轮播
	var count = 0;
    var timer = null;
    //
    function slide() {
        $('.page_img li').eq(count).show().siblings().hide();
    	$('.page_con li').eq(count).css({"background":"#FE3C3A","color":"white"}).siblings().css({"background":"#CCCCCC","color":"black"});
    }
    function time (){
        count ++;
        if(count >= $('.page_img li').length){
            count = 0;
        }
        slide();
    }
    slide();
    timer = setInterval(time, 1000);
    $('.btn-l').click(function () {
        count--;
        if (count < 0) {
            count = $('.page_img li').length - 1;
        }
        slide();
    });
    $('.btn-r').click(function () {
        time();
        return false;
    });
    $('.page_con li').mouseenter(function () {
        clearInterval(timer);
        count = $(this).index();
        slide();
        return false;
    });
    $('#banner_center').mouseenter(function () {
        $('#banner_center span').show();
        clearInterval(timer);
        return false;
    });
    $('#banner_center').mouseleave(function () {
        $('#banner_center span').hide();
        timer = setInterval(time, 1000);
        return false;
    });
    

	
	//购物车隐藏
	$(".index_content1_R").hover(function(){
		$(".cart_hide").show();
	},function(){
		$(".cart_hide").hide();
	});
	//加减
	var cart_hide_count=1;
	var _init=parseFloat($(".cart_hide_price").text());
//	var l_init=
	$(".cart_plus1").click(function(){
		cart_hide_count++;
		
		$(this).prev().val(cart_hide_count);
		var sum=cart_hide_count*_init;
//		alert(sum);
		$(".cart_hide_price").text(sum);
	})
	$(".cart_minus1").click(function(){
		if(cart_hide_count>1){
			cart_hide_count--;
//			var _init=parseFloat($(this).siblings("span").children("b").text())/(cart_hide_count-1);
			$(this).next().val(cart_hide_count);
			var sum=cart_hide_count*_init;
	//		alert(sum);
			$(".cart_hide_price").text(sum);
		}
	})
	
	

	//首页左右点击轮播
	$(".index_conten3_slide").mouseover(function(){
		$(".index_conten3_slide>b").show();
	}).mouseout(function(){
		$(".index_conten3_slide>b").hide();
	});
	$(".conten3_slide_l").click(function(){
		var $a=parseInt($(".index_conten3_slide ul").css("marginLeft"));
//		alert($a);
		if($a==-1930||$a==-965){
			$(".index_conten3_slide ul").animate({marginLeft:$a+965+"px"},2000);
		}else{
			return;
		}
	});
	$(".conten3_slide_r").click(function(){
		var $a=parseInt($(".index_conten3_slide ul").css("marginLeft"));
//		alert($a);
		if($a==-965||$a==0){
			$(".index_conten3_slide ul").animate({marginLeft:$a-965+"px"},2000);
		}else{
			return;
		}
	})
	
	//左边图片轮播




	var count1 = 0;
    var timer1 = null;
    function slide1() {
        $('.public_contentL_img li').eq(count1).show().siblings().hide();
        $('.public_con li').eq(count1).css('background', '#FE3C3A').siblings().css('background', '#CCCCCC');
    }
   	 function time1 (){
        count1 ++;
        if(count1 >= $('.public_contentL_img li').length){
            count1 = 0;
        }
        slide1();
    }
    slide1();
    timer1 = setInterval(time1, 1000);
     $('.contentL_l').click(function () {
        count1--;
        if (count1 < 0) {
            count1 = $('.public_contentL_img li').length - 1;
        }
        slide1();
    });
    $('.contentL_r').click(function () {
        time1();
        return false;
    });
    $('.public_con li').mouseenter(function () {
        clearInterval(timer1);
        count1 = $(this).index();
        slide1();
        return false;
    });
    $('.index_public_contentL').mouseover(function () {
    	 $('.index_public_contentL>b').show();
        clearInterval(timer1);
         return false;
    });
    $('.index_public_contentL').mouseout(function () {
        $('.index_public_contentL>b').hide();
        timer1 = setInterval(time1, 1000);
        return false;
    });
		    
		    
//------------------------------------------------------
//注册下拉
	$(".register_header ul").hover(function(){
		$(".register_header ul li").show();
		$(".register_header ul").css({"border":"1px #CCCCCC solid","background-color":"white"});
	},function(){
		$(".register_header ul li").hide();
		$(".register_header ul").css({"border-color":"transparent","background-color":"transparent"});
	})
	
//详情页
	//商品分类
	$(".det_classify").hover(function(){
		$(".det_classify ul").show();
		$(this).css("cursor","pointer");
	},function(){
		$(".det_classify ul").hide();
	})
	

	//小图->大图
	 $(".item a").hover(function(){
            changeImg($(this))
       }); 
    function changeImg(obj){
        if(obj.find("img").attr("alt")=="small"){
            var temp_big_src = obj.siblings('a').find('img[alt=big]').attr('src');
            var temp_big_url = obj.siblings('a[class=big-photo]').attr('href');
            var temp_small_src = obj.find('img').attr('src');
            var temp_small_url = obj.attr('href');
            obj.siblings('a').find('img[alt=big]').attr('src',temp_small_src);
        }
	}



	$(".detail_base_L>p a").hover(function(){
		$(".focus_off").hide();
		$(".focus_on").show();
	},function(){
		$(".focus_off").show();
		$(".focus_on").hide();
	})
	$(".detail_scan").click(function(){
		$(".discount").show();
	})
	$(".detail_close").click(function(){
		$(".discount").hide();
	})
	
	$(".detail_baseR_chg a").hover(function(){
		$(".chg2").show();
		$(".chg1").hide();
	},function(){
		$(".chg1").show();
		$(".chg2").hide();
	})
	//地址
	$(".address_top>ul li:first-child").click(function(){
		$(".address_province").show();
		$(".address_province").siblings("div").hide();
		$(this).addClass("address_top_chg");
		$(this).siblings().removeClass("address_top_chg");
	})
	$(".address_top>ul li:nth-of-type(2)").click(function(){
		$(".address_city").show();
		$(".address_city").siblings("div").hide();
		$(this).addClass("address_top_chg");
		$(this).siblings().removeClass("address_top_chg");
	})
	$(".address_top>ul li:nth-of-type(3)").click(function(){
		$(".address_area").show();
		$(".address_area").siblings("div").hide();
		$(this).addClass("address_top_chg");
		$(this).siblings().removeClass("address_top_chg");
	})
	$(".address_top>ul li:nth-of-type(4)").click(function(){
		$(".address_town").show();
		$(".address_town").siblings("div").hide();
		$(this).addClass("address_top_chg");
		$(this).siblings().removeClass("address_top_chg");
	})
	//关闭地址选择
	$(".detail_base_M select").click(function(){
		$(".address_model").show();
		$(this).hide();
	})
	$(".address_model>p i").click(function(){
		$(".address_model").hide();
		$(".detail_base_M select").show();
	})
	//数量+/-
	var detail_count=1;
	$(".count_plus").click(function(){
		detail_count++;
		$("#detail_count").val(detail_count);
	})
	$(".count_minus").click(function(){
		if(detail_count>1){
			detail_count--;
			$("#detail_count").val(detail_count);
		}
	})
	
	//换一批
	$(".detail_baseR_chg>p a").click(function(){
		$(".detail_baseR_chg>ul").toggle();
	})
	
	//顾客最喜爱
	$(".detail_contentR_top>table td").hover(function(){
		$(this).css({"border-color":"#fff1f1","box-shadow":"#FF966E 0px 0px 2px"});
	},function(){
		$(this).css({"border-color":"transparent","box-shadow":"none"});
	})
	
	
	//选项卡
	$(".detail_select_top>ul li").hover(function(){
		$(this).css("color","red");
	},function(){
		$(this).css("color","black");
	})
	$(".detail_select_top>ul li").click(function(){
		$(this).addClass("detail_selected");
		$(this).siblings().removeClass("detail_selected");
	})
	$(".detail_select1").click(function(){
		$(".detail_select_chg").show();
		$(".detail_select_chg").siblings().hide();
	})
	$(".detail_select2").click(function(){
		$(".detail_select_chg2").show();
		$(".detail_select_chg2").siblings().hide();
	})
	$(".detail_select3").click(function(){
		$(".detail_select_chg3").show();
		$(".detail_select_chg3").siblings().hide();
	})
	$(".detail_select4").click(function(){
		$(".detail_select_chg4").show();
		$(".detail_select_chg4").siblings().hide();
		
	})
	
	//评论分类
	$(".evaluate_top ul li").click(function(){
		$(this).addClass("evaluate_top_chg");
		$(this).siblings().removeClass("evaluate_top_chg");
		$(this).siblings().addClass("evaluate_top_no");
	})
	//评论切换
	$(".evaluate_all").click(function(){
		$(".detail_chg2_all").show();
		$(".detail_chg2_all").siblings().hide();
	})
	$(".evaluate_pic").click(function(){
		$(".detail_chg2_pic").show();
		$(".detail_chg2_pic").siblings().hide();
	})
	$(".evaluate_add").click(function(){
		$(".detail_chg2_add").show();
		$(".detail_chg2_add").siblings().hide();
	})
	$(".evaluate_good").click(function(){
		$(".detail_chg2_good").show();
		$(".detail_chg2_good").siblings().hide();
	})
	$(".evaluate_soso").click(function(){
		$(".detail_chg2_soso").show();
		$(".detail_chg2_soso").siblings().hide();
	})
	$(".evaluate_bad").click(function(){
		$(".detail_chg2_bad").show();
		$(".detail_chg2_bad").siblings().hide();
	})
	
	
	
	//------------------------------------------------------------------------------------------------------------------------
	//购物车
	//地址
	$("#cart_address_close").click(function(){
		$(".address_model").hide();
	})
	$(".cart_L>span:nth-of-type(2)").click(function(){
		$(".address_model").show();
	})
	
	//购物车轮播
	$(".cart_slide_L").click(function(){
		var $a=parseInt($(".cart_slide ul").css("marginLeft"));
//		alert($a);
		if($a==0){
			return;
		}else{
			$(".cart_slide>ul").animate({marginLeft:$a+1100+"px"},1000);
		}
	});
	$(".cart_slide_R").click(function(){
		var $a=parseInt($(".cart_slide ul").css("marginLeft"));
//		alert($a);
		if($a==-3300){
			
		}else{
			$(".cart_slide ul").animate({marginLeft:$a-1100+"px"},1000)
		}
	})
	
	//登录
	$(".login_right>p:nth-of-type(2) input[type=text]").focus();
	//显示
	$(".net_more").click(function(){
		$(".login_hide").toggle();
	})
	//复选框选中
	$("#chk_login").click(function(){
		$(".chk_alert").toggle();
	})
	$(".net_more").click(function(){
		$(".net_more>span img").toggle();
	})
	$(".login_right>p:nth-of-type(2) input[type=text]").hover(function(){
		
		$(".login_right>p:nth-of-type(2) span").hide();
	},function(){
		if($(this).val()==""){
			$(".login_right>p:nth-of-type(2) span").show();
		}
		
	})
	
	
	//注册
	
	$(".slide_content input[type=text]").click(function(){
		$(this).next().animate({left:"100px"});
		$(this).parent().find(".register_tips").show();
		$(this).parent().find(".register_tipsL").show();
		$(this).css("border-color","#dedede");
		$(this).parent().find(".register_alert").hide();
		$(this).parent().find(".register_alertL").hide();
	}).blur(function(){
		if($(this).val()==""){
			$(this).css("border-color","red");
			$(this).parent().find(".register_tips").hide();
			$(this).parent().find(".register_tipsL").hide();
			$(this).parent().find(".register_alert").show(100);
			$(this).parent().find(".register_alertL").show(100);
		}
	}).focus(function(){
		$(this).css("border-color","#dedede");
	})
	$(".register_slide").click(function(){
		$(this).animate({left:"100px"});
		$(this).prev().focus();
	})
	
	
	
	
	
})

