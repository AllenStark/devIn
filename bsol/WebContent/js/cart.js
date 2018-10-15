
$(function () {
	$('.delete_confirm').hide();
    //全局的checkbox选中和未选中的样式
    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
        $wholeChexbox = $('.whole_check'),
        $sonCheckBox = $('.son_check');                 //每个商品的checkbox
    $allCheckbox.click(function () {
        if ($(this).is(':checked')) {
            $(this).addClass('mark');
        } else {
            $(this).removeClass('mark');
        }
    });

    //===============================================全局全选与单个商品的关系================================
    $wholeChexbox.click(function () {
        if ($(this).is(':checked')) {
        	$('.delete_confirm').show();
            $allCheckbox.prop("checked", true);
            $allCheckbox.addClass('mark');
        } else {
        	$('.delete_confirm').hide();
            $allCheckbox.prop("checked", false);
            $allCheckbox.removeClass('mark');
        }
        totalMoney();
    });

    var len = $sonCheckBox.length;
    var num = 0;
    var index = 0;
    $sonCheckBox.each(function () {
        $(this).click(function () {
            if ($(this).is(':checked')) {
            	$('.delete_confirm').show();
            	num++;
                if (num == len) {
                    $wholeChexbox.prop("checked", true);
                    $wholeChexbox.addClass('mark');
                }
            } else { 
            	num--;
            	var sum = 0;
            	$sonCheckBox.each(function () {
                    if ($(this).is(':checked')) {
                        sum++;
                    }
                });
            	if(sum==0){
            		$('.delete_confirm').hide();
            	}
                //单个商品取消勾选，全局全选取消勾选
                $wholeChexbox.prop("checked", false);
                $wholeChexbox.removeClass('mark');
            }
            totalMoney();
        })
    });
    
  //搜索
    $('#search').keyup(function(event){
    	if(event.keyCode == 13){
    		isbn = $(this).val();
    		location.href="CartItemServlet?method=searchCart&isbn="+isbn;
    	}
    });
    //=================================================商品数量==============================================
    
    var $plus = $('.plus'),
        $reduce = $('.reduce'),
        $all_sum = $('.sum'),
        $userid = $("#userid").val();
    $plus.click(function () {
        var $inputVal = $(this).prev('input'),
            $count = parseInt($inputVal.val())+1,
            /*$obj = $(this).parents('.amount_box').find('.reduce'),*/
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseFloat($price),
            $isbn = $(this).parents('.order_lists').find(".son_check").val();
        /*ajax实现点击增加数量*/
        $.ajax({
			url:"CartItemServlet?method=chgCartCount",
			type:"get",
			data:"userid="+$userid+"&isbn="+$isbn+"&count="+$count,
			success:function(result){
				if($.trim(result) == "true"){
					/*alert("数量增加成功!");*/
					$inputVal.val($count);
			        $priceTotalObj.html('￥'+$priceTotal);
				}else{
					alert("修改失败!");
					return ;
				}
			},
			error:function(){
				alert("数量修改出错!");
				return;
			}
		});
        
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
        /*totalMoney();*/
    });

    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseInt($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseFloat($price),
            $isbn = $(this).parents('.order_lists').find(".son_check").val();
        
        if($inputVal.val()>1){
        	/*ajax实现点击减少数量*/
            $.ajax({
    			url:"CartItemServlet?method=chgCartCount",
    			type:"get",
    			data:"userid="+$userid+"&isbn="+$isbn+"&count="+$count,
    			success:function(result){
    				if($.trim(result) == "true"){
    					/*alert("数量减少成功!");*/
    					$inputVal.val($count);
    		            $priceTotalObj.html('￥'+$priceTotal);
    				}else{
    					alert("修改失败!");
    					return ;
    				}
    			},
    			error:function(){
    				alert("修改出错!");
    				return;
    			}
    		});
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
        /*totalMoney();*/
    });
    var $chgCount=0;
    $all_sum.click(function(){
    	$chgCount = $(this).val();
    })
    /*在input标签中更改商品数量*/
    $all_sum.change(function () {
        var $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = 0,
            $isbn = $(this).parents('.order_lists').find(".son_check").val(),
            $newCount = $(this).val();
        if($newCount=='' || $newCount==0){
            $(this).val($chgCount);
        }
        if(isNaN($newCount)){
        	alert("请输入数字");
        	$(this).val($chgCount);
        }
        $count = $(this).val();
        $priceTotal = $count*$price;
        $.ajax({
			url:"CartItemServlet?method=chgCartCount",
			type:"get",
			data:"userid="+$userid+"&isbn="+$isbn+"&count="+$count,
			success:function(result){
				if($.trim(result) == "true"){
					/*alert("修改数量成功!");*/
					/*$inputVal.val($count);*/
		            $priceTotalObj.html('￥'+$priceTotal);
				}else{
					alert("修改失败!");
					return ;
				}
			},
			error:function(){
				alert("修改出错!");
				return;
			}
		});
        /*totalMoney();*/
    });
    //======================================总计==========================================
    function totalMoney() {
        var total_money = 0;
        var total_count = 0;
        var calBtn = $('.calBtn a');
        $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                var goods = parseFloat($(this).parents('.order_lists').find('.sum_price').html().substring(1));
                var num = parseFloat($(this).parents('.order_lists').find('.sum').val());
                total_money += goods;
                total_count += num;
            }
        });
        $('.total_text').html('￥'+total_money);
        $('.piece_num').html(total_count);

        if(total_money!=0 && total_count!=0){
            if(!calBtn.hasClass('btn_sty')){
                calBtn.addClass('btn_sty');
            }
        }else{
            if(calBtn.hasClass('btn_sty')){
                calBtn.removeClass('btn_sty');
            }
        }
    }

});

/*删除商品*/
function deleteCartItem(isbn){
	var message = window.confirm("确定删除此商品?");
	if(message){
		window.location.href="CartItemServlet?method=deleteCartItem&isbn="+isbn;
	}
}
//批量移除
function deleteSome(){
	var chooseItem = $('.son_check'),
		isbns = 0,
		message = window.confirm("确定删除这些商品?");
	for(var x=0;x<chooseItem.length;x++){
		if(chooseItem[x].checked == true){
			isbns+=chooseItem[x].value+",";
		}
	}
	if(message){
		window.location.href="CartItemServlet?method=deleteSomeCart&isbns="+isbns;
	}
}
//结算
function account(){
	var chooseItem = $('.son_check'),
	 	totalPrice = $('.total_text').text(),
		isbns = 0;
	for(var x=0;x<chooseItem.length;x++){
		if(chooseItem[x].checked == true){
			isbns+=chooseItem[x].value+",";
		}
	}
	window.location.href="CartItemServlet?method=account&isbns="+isbns+"&totalPrice="+totalPrice;
}



