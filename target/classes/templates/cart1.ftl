<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>购物车</title>
</head>

<link rel="stylesheet" type="text/css" href="/cart1/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="/cart1/css/style.css" />

<link rel="stylesheet" href="mall/css/base.css">
<link rel="stylesheet" href="mall/css/index.css">
<script type="text/javascript" src="mall/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="mall/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="mall/js/banner.index.js"></script>
<script type="text/javascript" src="mall/js/hun.index.js"></script>



<body>

<div class="w-all w-minw bg-cf5f5f5 ovhidden">
	<div class="w-main m-auto">
		<div class="fl"> <span class="fs-14 line-h30 ftc-6b6b6b dsblock fl"> 送货至：广东省,广州市,番禺区 </span> <a href="#" class="tx-ind dsblock w-12 fl bg_icon add-sele m-l-5 hg-30">地址选择</a> <a href="#" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">${user.username}</a> <a href="/login" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">退出登录</a></div>
		<ul class="topnav fr">
			<li class="fl"><a href="/user" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">首页</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1 hg-30">首页</i>
			<li class="fl"><a href="/myorder" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">我的订单</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1 hg-30">我的订单</i>
			<li class="fl"><a href="/mycollect" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">我的收藏</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1  hg-30">我的收藏</i>
			<li class="fl"><a href="/business" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">商家操作</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1  hg-30">商家操作</i>
			<li class="fl"><a href="/info" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">个人资料</a></li>

		</ul>
	</div>
</div>

<div class="w-all w-minw ovhidden bd-bs-ed4f2c">
	<div class="w-main m-auto">
		<ul class="w-main nav">
			<li class="fl"><a href="/user" class="fl dsblock p-l-13 p-r-13 m-l-20 fs-16 ftc-626262 line-45 navactive">首页</a></li>
			<li class="fl"><a href="/store" class="fl dsblock p-l-13 p-r-13 m-l-20 fs-16 ftc-626262 line-45">商城</a></li>
			<li class="fl"><a href="#" class="fl dsblock p-l-13 p-r-13 m-l-20 fs-16 ftc-626262 line-45">活动专区</a></li>
			<li class="fl"><a href="#" class="fl dsblock p-l-13 p-r-13 m-l-20 fs-16 ftc-626262 line-45">限时抢购</a></li>

			<div class="clear"></div>
		</ul>
	</div>
</div>


<div class="shopping-car-container">
	<div class="car-headers-menu">
		<div class="row">
			<div class="col-md-1 car-menu">
				<label><input type="checkbox" id="check-goods-all" /><span id="checkAll">全选</span></label>
			</div>
			<div class="col-md-3 car-menu">商品名称</div>
			<div class="col-md-3 car-menu">商品信息</div>
			<div class="col-md-1 car-menu">单价</div>
			<div class="col-md-1 car-menu">数量</div>
			<div class="col-md-1 car-menu">金额</div>
			<div class="col-md-2 car-menu">操作</div>
		</div>
	</div>
	<div class="goods-content">
		<!--goods display-->
	</div>
	<div class="panel panel-default">
		<div class="panel-body bottom-menu-include">
			<div class="col-md-1 check-all-bottom bottom-menu">
				<label>
						<input type="checkbox" id="checked-all-bottom" />
						<span id="checkAllBottom">全选</span>
					</label>
			</div>
			<div class="col-md-1 bottom-menu">
				<span id="deleteMulty">
						全部删除
				</span>
			</div>
			<div class="col-md-6 bottom-menu">

			</div>
			<div class="col-md-2 bottom-menu">
				<span>已选商品 <span id="selectGoodsCount">0</span> 件</span>
			</div>
			<div class="col-md-1 bottom-menu">
				<span>合计：<span id="selectGoodsMoney">0.00</span></span>
			</div>
			<div class="col-md-1 bottom-menu submitData submitDis" id="paycart">
				结算
			</div>
		</div>
	</div>
	<!--删除确认弹框-->
	<div class="modal fade" tabindex="-1" role="dialog" id="deleteItemTip" aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
				</div>
				<div class="modal-body">
					确认删除此商品？
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary deleteSure">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!--是否勾选商品提示-->
	<div class="modal fade" tabindex="-1" role="dialog" id="selectItemTip" aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="gridSystemModalLabel2">提示</h4>
				</div>
				<div class="modal-body">
					请选择要删除的商品！
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!--批量删除商品-->
	<div class="modal fade" tabindex="-1" role="dialog" id="deleteMultyTip" aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="gridSystemModalLabel3">提示</h4>
				</div>
				<div class="modal-body">
					确认删除选择的商品！
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary deleteMultySure">确定</button>
				</div>
			</div>
		</div>
	</div>
</div>







</body>

<script type="text/javascript" src="/cart1/js/jquery.min.js"></script>
<#--<script type="text/javascript" src="/cart1/js/script.js"></script>-->


<#--<script>-->
<#--	-->
<#--	-->
<#--	console.log(l);-->
<#--	loadList(l);-->
<#--	-->
<#--</script>-->

<script>
	let goodsList=${list};
	console.log(goodsList)
	let deleteGoods = null

	loadGoods();
	function loadGoods() {
		$.each(goodsList, function(i, item) {

			var goodsHtml = '<div class="goods-item">' +
					'<div class="panel panel-default">' +
					'<div class="panel-body">' +
					'<div class="col-md-1 car-goods-info">' +
					'<label><input type="checkbox" class="goods-list-item"/></label>' +
					'</div>' +
					'<div class="col-md-3 car-goods-info goods-image-column">' +
					'<img class="goods-image" src="' + item.pic + '" style="width: 100px; height: 100px;" />' +
					'<span id="goods-info">' +
					item.itemname +
					'</span>' +
					'</div>' +
					'<div class="col-md-3 car-goods-info goods-params">' + item.details + '</div>' +
					'<div class="col-md-1 car-goods-info goods-price"><span>￥</span><span class="single-price">' + item.price + '</span></div>' +
					'<div class="col-md-1 car-goods-info goods-counts">' +
					'<div class="input-group">' +
					'<div class="input-group-btn">' +
					'<button type="button" class="btn btn-default car-decrease">-</button>' +
					'</div>' +
					'<input type="text" style="width: 50px; font-size: 15px;"  oninput="value=value.replace(/[^\\d]/g,\'\')" class="form-control goods-count" value="' + item.num + '">' +
					'<div class="input-group-btn">' +
					'<button type="button" class="btn btn-default car-add">+</button>' +
					'</div>' +
					'</div>' +
					'</div>' +
					'<div class="col-md-1 car-goods-info goods-money-count"><span>￥</span><span class="single-total">' + item.price*item.num + '</span></div>' +
					'<div class="col-md-2 car-goods-info goods-operate">' +
					'<button type="button" class="btn btn-danger item-delete">删除</button>' +
					'<input type="hidden" value="'+item.id+'">' +
					'</div>' +
					'</div>' +
					'</div>' +
					'</div>'
			$('.goods-content').append(goodsHtml)
		})
	}

	function sleep(NumMillis) {
		var nowTime = new Date();
		var exitTime = nowTime .getTime() + NumMillis;
		while (true) {
			now = new Date();
			if (now.getTime() > exitTime)
				return;
		}
	}

	function ShoppingCarObserver(elInput, isAdd) {
		this.elInput = elInput
		this.parents = this.elInput.parents('.goods-item')
		this.count = parseInt(this.elInput.val())
		this.isAdd = isAdd
		this.singlePrice = parseFloat(this.parents.find('.single-price').text())
		this.computeGoodsMoney = function() {
			var moneyCount = this.count * this.singlePrice
			var singleTotalEl = this.parents.find('.single-total')

			singleTotalEl.empty().append(moneyCount)
		}
		this.showCount = function() {
			var isChecked = this.parents.find('.goods-list-item')[0].checked
			var GoodsTotalMoney = parseFloat($('#selectGoodsMoney').text())
			var goodsTotalCount = parseInt($('#selectGoodsCount').text())
			if(this.elInput) {
				if(this.isAdd) {
					++this.count
					if(isChecked) {
						$('#selectGoodsMoney').empty().append(GoodsTotalMoney + this.singlePrice)
						$('#selectGoodsCount').empty().append(goodsTotalCount + 1)
					}
				} else {
					if(parseInt(this.count) <= 1) {
						return
					} else {
						--this.count
						if(isChecked) {
							$('#selectGoodsMoney').empty().append(GoodsTotalMoney - this.singlePrice)
							$('#selectGoodsCount').empty().append(goodsTotalCount - 1)
						}
					}
				}
				this.elInput.val(this.count)
			}
		}
		this.checkIsAll = function() {
			var checkLen = $('.goods-list-item:checked').length
			if (checkLen > 0) {
				$('.submitData').removeClass('submitDis')
			} else {
				$('.submitData').addClass('submitDis')
			}
			if($('.goods-item').length === checkLen) {
				$('#checked-all-bottom, #check-goods-all').prop('checked', true)
			} else {
				$('#checked-all-bottom, #check-goods-all').prop('checked', false)
			}
		}
		this.checkedChange = function(isChecked) {
			if(isChecked === undefined) {
				var isChecked = this.parents.find('.goods-list-item')[0].checked
			}
			var itemTotalMoney = parseFloat(this.parents.find('.single-total').text())
			var GoodsTotalMoney = parseFloat($('#selectGoodsMoney').text())
			var itemCount = parseInt(this.parents.find('.goods-count').val())
			var goodsTotalCount = parseInt($('#selectGoodsCount').text())
			if(isChecked) {
				$('#selectGoodsMoney').empty().append(itemTotalMoney + GoodsTotalMoney)
				$('#selectGoodsCount').empty().append(itemCount + goodsTotalCount)
			} else {
				if (GoodsTotalMoney - itemTotalMoney === 0) {
					$('#selectGoodsMoney').empty().append('0.00')
					if (!$('.submitData').hasClass('submitDis')) {
						$('.submitData').addClass('submitDis')
					}
				} else {
					$('#selectGoodsMoney').empty().append(GoodsTotalMoney - itemTotalMoney)
				}
				$('#selectGoodsCount').empty().append(goodsTotalCount - itemCount)
			}
		}
		this.deleteGoods = function() {
			var isChecked = this.parents.find('.goods-list-item')[0].checked
			if(isChecked) {
				this.checkedChange(false)
			}
			this.parents.remove()
			this.checkOptions()
		}
		this.checkOptions = function() {
			if ($('#check-goods-all')[0].checked) {
				if ($('.goods-list-item').length <= 0) {
					$('#checked-all-bottom, #check-goods-all').prop('checked', false)
				}
			}
		}
	}
	function checkedAll(_this) {
		if ($('.goods-item').length <= 0) {
			$('.submitData').addClass('submitDis')
		} else {
			$('.submitData').removeClass('submitDis')
		}
		for(var i = 0; i < $('.goods-item').length; i++) {
			var elInput = $('.goods-item').eq(i).find('.goods-list-item')
			var isChecked = $('.goods-item').eq(i).find('.goods-list-item')[0].checked
			var checkAllEvent = new ShoppingCarObserver(elInput, null)
			if(_this.checked) {
				if(!isChecked) {
					elInput.prop('checked', true)
					checkAllEvent.checkedChange(true)
				}
			} else {
				if (!$('.submitData').hasClass('submitDis')){
					$('.submitData').addClass('submitDis')
				}
				if(isChecked) {
					elInput.prop('checked', false)
					checkAllEvent.checkedChange(false)
				}
			}
		}
	}
	$('#check-goods-all').on('change', function() {
		if(this.checked) {
			$('#checked-all-bottom').prop('checked', true)
		} else {
			$('#checked-all-bottom').prop('checked', false)
		}
		checkedAll(this)
	})
	$('#checked-all-bottom').on('change', function() {
		if(this.checked) {
			$('#check-goods-all').prop('checked', true)
		} else {
			$('#check-goods-all').prop('checked', false)
		}
		checkedAll(this)
	})
	$('.goods-list-item').on('change', function() {
		var tmpCheckEl = $(this)
		var checkEvent = new ShoppingCarObserver(tmpCheckEl, null)
		checkEvent.checkedChange()
		checkEvent.checkIsAll()
	})
	$('.goods-content').on('click', '.car-decrease', function() {
		var goodsInput = $(this).parents('.input-group').find('.goods-count')
		var decreaseCount = new ShoppingCarObserver(goodsInput, false)
		decreaseCount.showCount()
		decreaseCount.computeGoodsMoney()
	})
	$('.goods-content').on('click', '.car-add', function() {
		var goodsInput = $(this).parents('.input-group').find('.goods-count')
		var addCount = new ShoppingCarObserver(goodsInput, true)
		console.log($(".goods-count").val())
		addCount.showCount()
		addCount.computeGoodsMoney()
	})
	$('.goods-content').on('click', '.item-delete', function() {
		// console.log($(this).siblings().eq(0).val())

		$.ajax({
			url:"delcartitem",
			type:"post",
			data:{id:$(this).siblings().eq(0).val()},
			success:function () {
				window.location.href="/cart"
			}
		})
		// var goodsInput = $(this).parents('.goods-item')
		// $(goodsInput).remove();

		// console.log(goodsInput)
		// deleteGoods = new ShoppingCarObserver(goodsInput, null)
		// $('#deleteItemTip').modal('show')


	})
	$('.deleteSure').on('click', function() {
		if(deleteGoods !== null) {
			deleteGoods.deleteGoods()
		}
		$('#deleteItemTip').modal('hide')
	})
	$('#deleteMulty').on('click', function() {
		// if($('.goods-list-item:checked').length <= 0) {
		// 	$('#selectItemTip').modal('show')
		// } else {
		// 	$('#deleteMultyTip').modal('show')
		// }
		// console.log($(this).parent().parent().parent().parent().find(".goods-item"))


		// var status = $("#hasApply").prop("checked");
		// console.log($('#checked-all-bottom').prop("checked"))
		// $('#checked-all-bottom').checked();
		// $().addClass("submitDis")

		//有用
		// $(this).parent().parent().parent().parent().find(".goods-list-item").prop("checked",false);
		// $("#check-goods-all").prop("checked",false);
		// $("#checked-all-bottom").prop("checked",false);
		//
		// $(this).parent().parent().parent().parent().find(".goods-item").remove()
		//
		// $('#selectGoodsCount').text(0)
		//
		// $('#selectGoodsMoney').text(0)
		//
		// $(this).parent().parent().find(".submitData").addClass("submitDis")
		$.ajax({
			url:"/delcartall",
			type: "post",
			success:function () {
				window.location.href="/cart"
			}
		})




	})
	$('.deleteMultySure').on('click', function() {
		for (var i = 0; i < $('.goods-list-item:checked').length; i++) {
			var multyDelete = new ShoppingCarObserver($('.goods-list-item:checked').eq(i), null)

			multyDelete.deleteGoods()
			i--
		}
		multyDelete.checkOptions()
		$('#deleteMultyTip').modal('hide')
	})

	$('.goods-count').keyup(function () {
		// console.log("hh")
		// var goodsInput = $(this).parents('.input-group').find('.goods-count')
		// var addCount = new ShoppingCarObserver(goodsInput, true)
		// console.log($(".goods-count").val())
		// addCount.showCount()
		// addCount.computeGoodsMoney()
		var goodsInput = $(this).val();
		if(goodsInput<=1)
			$(this).val(1);
		// console.log(goodsInput)
		// console.log($(this).parent().parent().siblings().eq(3).find('.single-price').text())
		var price=$(this).parent().parent().siblings().eq(3).find('.single-price').text();

		// console.log($(this).parent().parent().siblings().eq(4).find('.single-total').text())
		var count=price*goodsInput;
				$(this).parent().parent().siblings().eq(4).find('.single-total').text(count)

	});

	$("#paycart").click(function () {

			if($(this).is('.submitDis')){
				console.log("请选择商品支付")
			}else {
				// console.log("hh")

				// confirm("sddsdssd")
				if (confirm('是否支付？')){
					// console.log(goodsList[0].itemid)

					let myDate = new Date();
					//获取当前年
					let year=myDate.getFullYear();
					//获取当前月
					let month=myDate.getMonth()+1;
					//获取当前日
					let date=myDate.getDate();
					let h=myDate.getHours();       //获取当前小时数(0-23)
					let m=myDate.getMinutes();     //获取当前分钟数(0-59)
					if(m<10) m = '0' + m;
					let s=myDate.getSeconds();
					if(s<10) s = '0' + s;
					let now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;


					console.log("mm")
				// window.location.href="";
					for(let i=0;i<$(".goods-content").find(".goods-item").find(".goods-list-item").length;i++) {

						if($(".goods-content").find(".goods-item").eq(i).find(".goods-list-item").prop("checked")){

							let singleprice=$(".goods-content").find(".goods-item").eq(i).find(".single-price").text()

							let num =$(".goods-content").find(".goods-item").eq(i).find(".goods-count").val()

							let countprice=$(".goods-content").find(".goods-item").eq(i).find(".single-total").text()

							// 实际外面还有个ajax请求扣他钱
							// let itemList=[]; push

							$.ajax({
								url:"/topay",
								type:"post",
								data:{singleprice:singleprice,num:num,countprice:countprice,time:now,itemid:goodsList[i].itemid},
								success:function () {
									 sleep(1000);
									 window.location.href="/cart"

								}
							})

						}


					}

					// window.location.href="/cart"


					return true;
				}

				else {
					return false;
				}

			}

	})




</script>

</html>