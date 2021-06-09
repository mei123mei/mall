<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品详情</title>

	<link rel="stylesheet" href="lib/layui/css/layui.css" media="all">
	<link rel="stylesheet" href="css/admin.css" media="all">
	<link rel="stylesheet" href="mall/css/base.css">
	<link rel="stylesheet" href="mall/css/index.css">

<link rel="stylesheet" href="itemdetail/css/shouye.css">

	<link rel="stylesheet" href="givelike/css/style.css">
	<link rel="stylesheet" href="givelike/css/comment.css">


<script src="itemdetail/js/jquery-1.8.3.min.js"></script>
<script   src="itemdetail/js/modernizr-custom-v2.7.1.min.js"></script>
<script>
	$(document).ready(function(){
var $miaobian=$('.Xcontent08>div');
var $huantu=$('.Xcontent06>img');
var $miaobian1=$('.Xcontent26>div');
$miaobian.mousemove(function(){miaobian(this);});
$miaobian1.click(function(){miaobian1(this);});
function miaobian(thisMb){
	for(var i=0; i<$miaobian.length; i++){
		$miaobian[i].style.borderColor = '#dedede';
	}
	thisMb.style.borderColor = '#cd2426';

	$huantu[0].src = thisMb.children[0].src;
}
function miaobian1(thisMb1){
	for(var i=0; i<$miaobian1.length; i++){
		$miaobian1[i].style.borderColor = '#dedede';
	}
//		thisMb.style.borderColor = '#cd2426';
	$miaobian.css('border-color','#dedede');
	thisMb1.style.borderColor = '#cd2426';
	$huantu[0].src = thisMb1.children[0].src;
}
		$(".Xcontent33").click(function(){
		var value=parseInt($('.input').val())+1;
		$('.input').val(value);
	})

	$(".Xcontent32").click(function(){	
		var num = $(".input").val()
		if(num>1){
			$(".input").val(num-1);
		}			
		
	})

		$("#cart").click(function () {
			// console.log("sddsd")
			let itemname="${item.name}";
			let price="${item.price}";
			// console.log(itemname);
			// console.log(price);
			// console.log($("#num").val());
			let pic="${item.pic}";
			let details="${item.details}";
			$.ajax({
				url:"/putCart",
				data:{itemname:itemname,price:price,num:$("#num").val(),pic:pic,details:details,itemid:"${item.id}"},
				type:"post",
				success:function () {
					window.location.href="/user";
				}
			})
		});

	})


</script>




	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
		}

		body {
			background: url("images/bg.jpg") no-repeat fixed;
		}

		#qq {
			width: 600px;
			/*宽*/
			height: 170px;
			/*高*/
			background: #fff;
			/*背景颜色*/
			margin: 50px auto 30px;
			border-radius: 5px;
			/*Html5 圆角*/
		}

		#qq p {
			font-size: 12px;
			color: #666;
			font-family: "微软雅黑";
			line-height: 45px;
			text-indent: 20px;
		}

		#qq .message {
			width: 560px;
			height: 70px;
			margin: 0 auto;
			overflow: hidden;
			outline: none;
			border: 1px solid #ddd;
			padding: 8px;
			box-sizing: border-box;
			font-size: 14px;
			-webkit-background-clip: text;
			color: transparent;
			background-image: linear-gradient(to right, #778899 0%, #333 100%);
			/*粗细 风格 颜色*/
		}

		#qq .But {
			width: 560px;
			height: 35px;
			margin: 15px auto 0px;
			position: relative;
			/*相对，参考对象*/
		}

		#qq .But img.bq {
			float: left;
			/*左浮动*/
		}

		#qq .But span.submit {
			width: 80px;
			height: 30px;
			background: #ff8140;
			display: block;
			float: right;
			/*右浮动*/
			line-height: 30px;
			border-radius: 5px;
			cursor: pointer;
			/*手指*/
			color: #fff;
			font-size: 12px;
			text-align: center;
			font-family: "微软雅黑";
		}

		/*face begin*/
		#qq .But .face {
			width: 440px;
			background: #fff;
			border: 1px solid #ddd;
			box-shadow: 0 0 12px #666;
			position: absolute;
			/*绝对定位*/
			top: 21px;
			left: 15px;
			display: none;
			/*隐藏*/
		}

		#qq .But .face ul {
			width: 100%;
			height: 100%;
			display: flex;
			flex-wrap: wrap;
			padding: 8px;
			box-sizing: border-box;
		}

		#qq .But .face ul li {
			width: 30px;
			height: 30px;
			list-style-type: none;
			cursor: pointer;
			display: flex;
			justify-content: center;
			align-items: center;
		}

		/*msgCon begin*/
		.msgCon {
			width: 600px;
			margin: 0px auto;
			margin-bottom: 60px;
		}

		.msgCon .msgBox {
			background: #fff;
			padding: 10px;
			box-sizing: border-box;
			margin-top: 16px;
			border-radius: 4px;
		}

		.msgCon .msgBox .headUrl {
			width: 100%;
			height: 60px;
			border-bottom: 1px dotted #ddd;
			display: flex;
			align-items: center;
		}

		.msgCon .msgBox .headUrl img {
			width: 46px;
			height: 46px;
			border-radius: 50%
		}

		.msgCon .msgBox .headUrl div {
			flex: 1;
			display: flex;
			flex-flow: column;
			font-size: 16px;
			margin-left: 16px;
			-webkit-background-clip: text;
			color: transparent;
			background-image: linear-gradient(to top, #b224ef 0%, #7579ff 100%);
		}

		.msgCon .msgBox .headUrl div .time {
			font-size: 14px;
			margin-top: 6px;
			-webkit-background-clip: text;
			color: transparent;
			background-image: linear-gradient(to right, #74ebd5 0%, #9face6 100%);
		}

		.msgCon .msgBox .headUrl a {
			font-size: 14px;
			padding: 10px;
			color: salmon;
			cursor: pointer;
		}

		.msgCon .msgBox .msgTxt {
			font-size: 14px;
			color: #666;
			min-height: 40px;
			line-height: 24px;
			padding: 10px;
			box-sizing: border-box;
			word-wrap: break-word;
			-webkit-background-clip: text;
			color: transparent;
			background-image: linear-gradient(to right, #778899 0%, #333 100%);
		}
	</style>


</head>
<body>

<div class="w-all w-minw bg-cf5f5f5 ovhidden">
	<div class="w-main m-auto">
		<div class="fl"> <span class="fs-14 line-h30 ftc-6b6b6b dsblock fl"> 送货至：广东省,广州市,番禺区 </span>  <a href="#" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">${user.username}</a> <a href="/static/login" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">退出登录</a></div>
		<ul class="topnav fr">
			<li class="fl"><a href="/user" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">商城首页</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1 hg-30">商城首页</i>
			<li class="fl"><a href="/cart" class="fs-14 ftc-6b6b6b line-h30 fl m-l-20 m-r-20">我的购物车</a></li>
			<i class="dsblock bg_icon topnav_line fl tx-ind w-1 hg-30">我的购物车</i>
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

<div class="Xcontent">
	<ul class="Xcontent01">
		<div class="Xcontent06" style="display: flex; flex-direction: column; align-content: center;">
			<div  style="    width: 500px;height: 500px"><a href="${item.pic}"><img src="${item.pic}" ></a></div>
			<div style="width: 100px;height: 15px;margin: 5px auto;font-size: 15px;"><i class="date-dz-z-click-red collectitem"></i>收藏商品</div>
		</div>
		<ol class="Xcontent13">
			<div class="Xcontent14"><a href="#"><p>${item.name}</p></a></div>
			<div class="Xcontent15"><img src="itemdetail/images/shangpinxiangqing/X11.png"></div>

			<div class="Xcontent16"><p>${item.details}</p></div>
			<div class="Xcontent17">
				<p class="Xcontent18">售价</p>
				<p class="Xcontent19">￥<span>${item.price}</span></p>
				<div class="Xcontent20">
					<p class="Xcontent21">促销</p>
					<img src="itemdetail/images/shangpinxiangqing/X12.png">
<#--					<p class="Xcontent22">领610元新年礼券，满再赠好礼</p>-->
				</div>
				<div class="Xcontent23">
					<p class="Xcontent24">服务</p>
					<p class="Xcontent25">48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp;        满88元免邮</p>
				</div>
				
			</div>
<#--			<div class="Xcontent26">-->
<#--				<p class="Xcontent27">颜色</p>-->
<#--				<div class="Xcontent28"><img  src="itemdetail/images/shangpinxiangqing/X14.png"></div>-->
<#--					<div class="Xcontent29"><img  src="itemdetail/images/shangpinxiangqing/X1.png"></div>-->
<#--			</div>-->
			<div class="Xcontent30">
				<p class="Xcontent31">数量</p>
				<div class="Xcontent32"><img src="itemdetail/images/shangpinxiangqing/X15.png"></div>
				<form><input id="num" class="input" value="1"></form>
				<div class="Xcontent33"><img src="itemdetail/images/shangpinxiangqing/16.png"></div>
			</div>
			<div class="Xcontent34"><a id="pay" ><img src="itemdetail/images/shangpinxiangqing/X17.png"></a></div>
			<div class="Xcontent35" id="cart"><a  ><img src="itemdetail/images/shangpinxiangqing/X18.png"></a></div>
		</ol>
	</ul>
</div>

<div id="qq">
	<p>有什么新鲜事想告诉大家?</p>
	<div class="message" contentEditable='true'></div>
	<div class="But">
		<img src="comment/images/bba_thumb.gif" class='bq' />
		<span class='submit'>发表</span>
		<!--face begin-->
		<div class="face">
			<ul>
				<li><img src="comment/images/smilea_thumb.gif" title="呵呵]"></li>
				<li><img src="comment/images/tootha_thumb.gif" title="嘻嘻]"></li>
				<li><img src="comment/images/laugh.gif" title="[哈哈]"></li>
				<li><img src="comment/images/tza_thumb.gif" title="[可爱]"></li>
				<li><img src="comment/images/kl_thumb.gif" title="[可怜]"></li>
				<li><img src="comment/images/kbsa_thumb.gif" title="[挖鼻屎]"></li>
				<li><img src="comment/images/cj_thumb.gif" title="[吃惊]"></li>
				<li><img src="comment/images/shamea_thumb.gif" title="[害羞]"></li>
				<li><img src="comment/images/zy_thumb.gif" title="[挤眼]"></li>
				<li><img src="comment/images/bz_thumb.gif" title="[闭嘴]"></li>
				<li><img src="comment/images/bs2_thumb.gif" title="[鄙视]"></li>
				<li><img src="comment/images/lovea_thumb.gif" title="[爱你]"></li>
				<li><img src="comment/images/sada_thumb.gif" title="[泪]"></li>
				<li><img src="comment/images/heia_thumb.gif" title="[偷笑]"></li>
				<li><img src="comment/images/qq_thumb.gif" title="[亲亲]"></li>
				<li><img src="comment/images/sb_thumb.gif" title="[生病]"></li>
				<li><img src="comment/images/mb_thumb.gif" title="[太开心]"></li>
				<li><img src="comment/images/ldln_thumb.gif" title="[懒得理你]"></li>
				<li><img src="comment/images/yhh_thumb.gif" title="[右哼哼]"></li>
				<li><img src="comment/images/zhh_thumb.gif" title="[左哼哼]"></li>
				<li><img src="comment/images/x_thumb.gif" title="[嘘]"></li>
				<li><img src="comment/images/cry.gif" title="[衰]"></li>
				<li><img src="comment/images/wq_thumb.gif" title="[委屈]"></li>
				<li><img src="comment/images/t_thumb.gif" title="[吐]"></li>
				<li><img src="comment/images/k_thumb.gif" title="[打哈气]"></li>
				<li><img src="comment/images/bba_thumb.gif" title="[抱抱]"></li>
				<li><img src="comment/images/angrya_thumb.gif" title="[怒]"></li>
				<li><img src="comment/images/yw_thumb.gif" title="[疑问]"></li>
				<li><img src="comment/images/cza_thumb.gif" title="[馋嘴]"></li>
				<li><img src="comment/images/88_thumb.gif" title="[拜拜]"></li>
				<li><img src="comment/images/sk_thumb.gif" title="[思考]"></li>
				<li><img src="comment/images/sweata_thumb.gif" title="[汗]"></li>
				<li><img src="comment/images/sleepya_thumb.gif" title="[困]"></li>
				<li><img src="comment/images/sleepa_thumb.gif" title="[睡觉]"></li>
				<li><img src="comment/images/money_thumb.gif" title="[钱]"></li>
				<li><img src="comment/images/sw_thumb.gif" title="[失望]"></li>
				<li><img src="comment/images/cool_thumb.gif" title="[酷]"></li>
				<li><img src="comment/images/hsa_thumb.gif" title="[花心]"></li>
				<li><img src="comment/images/hatea_thumb.gif" title="[哼]"></li>
				<li><img src="comment/images/gza_thumb.gif" title="[鼓掌]"></li>
				<li><img src="comment/images/dizzya_thumb.gif" title="[晕]"></li>
				<li><img src="comment/images/bs_thumb.gif" title="[悲伤]"></li>
				<li><img src="comment/images/crazya_thumb.gif" title="[抓狂]"></li>
				<li><img src="comment/images/h_thumb.gif" title="[黑线]"></li>
				<li><img src="comment/images/yx_thumb.gif" title="[阴险]"></li>
				<li><img src="comment/images/nm_thumb.gif" title="[怒骂]"></li>
				<li><img src="comment/images/hearta_thumb.gif" title="[心]"></li>
				<li><img src="comment/images/unheart.gif" title="[伤心]"></li>
				<li><img src="comment/images/pig.gif" title="[猪头]"></li>
				<li><img src="comment/images/ok_thumb.gif" title="[ok]"></li>
				<li><img src="comment/images/ye_thumb.gif" title="[耶]"></li>
				<li><img src="comment/images/good_thumb.gif" title="[good]"></li>
				<li><img src="comment/images/no_thumb.gif" title="[不要]"></li>
				<li><img src="comment/images/z2_thumb.gif" title="[赞]"></li>
				<li><img src="comment/images/come_thumb.gif" title="[来]"></li>
				<li><img src="comment/images/sad_thumb.gif" title="[弱]"></li>
				<li><img src="comment/images/lazu_thumb.gif" title="[蜡烛]"></li>
				<li><img src="comment/images/clock_thumb.gif" title="[钟]"></li>
				<li><img src="comment/images/cake.gif" title="[蛋糕]"></li>
				<li><img src="comment/images/m_thumb.gif" title="[话筒]"></li>
				<li><img src="comment/images/weijin_thumb.gif" title="[围脖]"></li>
				<li><img src="comment/images/lxhzhuanfa_thumb.gif" title="[转发]"></li>
				<li><img src="comment/images/lxhluguo_thumb.gif" title="[路过这儿]"></li>
				<li><img src="comment/images/bofubianlian_thumb.gif" title="[bofu变脸]"></li>
				<li><img src="comment/images/gbzkun_thumb.gif" title="[gbz困]"></li>
				<li><img src="comment/images/boboshengmenqi_thumb.gif" title="[生闷气]"></li>
				<li><img src="comment/images/chn_buyaoya_thumb.gif" title="[不要啊]"></li>
				<li><img src="comment/images/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
				<li><img src="comment/images/cat_yunqizhong_thumb.gif" title="[运气中]"></li>
				<li><img src="comment/images/youqian_thumb.gif" title="[有钱]"></li>
			</ul>
		</div>
		<!--face end-->
	</div>
</div>
<!--qq end-->
<!--msgCon begin-->
<div class="msgCon" id="comment"></div>

<#--不要-->
<#--<div class="commentAll">-->
<#--	<!--评论区域 begin&ndash;&gt;-->
<#--	<div class="reviewArea clearfix">-->
<#--		<textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>-->
<#--		<a href="javascript:;" class="plBtn">评论</a>-->
<#--	</div>-->
<#--	<!--评论区域 end&ndash;&gt;-->
<#--	<!--回复区域 begin&ndash;&gt;-->
<#--	<div class="comment-show">-->
<#--		<div class="comment-show-con clearfix">-->
<#--			<div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div>-->
<#--			<div class="comment-show-con-list pull-left clearfix">-->
<#--				<div class="pl-text clearfix">-->
<#--					<a href="#" class="comment-size-name">张三 : </a>-->
<#--					<span class="my-pl-con">&nbsp;来啊 造作啊!</span>-->
<#--				</div>-->
<#--				<div class="date-dz">-->
<#--					<span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>-->
<#--					<div class="date-dz-right pull-right comment-pl-block">-->
<#--						<a href="javascript:;" class="removeBlock">删除</a>-->
<#--&lt;#&ndash;						<a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>&ndash;&gt;-->
<#--						<span class="pull-left date-dz-line">|</span>-->
<#--						<a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>-->
<#--					</div>-->
<#--				</div>-->
<#--				<div class="hf-list-con"></div>-->
<#--			</div>-->
<#--		</div>-->
<#--	</div>-->
<#--	<!--回复区域 end&ndash;&gt;-->
<#--</div>-->






</body>

<script type="text/javascript" src="comment/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(".collectitem").click(function () {


		if($(this).is('.date-dz-z-click')){

			$(this).removeClass('date-dz-z-click red');

			// $('.date-dz-z-click-red').removeClass('red');
			$.ajax({
				url:"/delcollect",
				type:"post",
				data:{username:"${user.username}",itemid:"${item.id}"}
			})


		}else {

			$(this).addClass('date-dz-z-click');

			$('.collectitem').addClass('red');

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
			let now2=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;


			$.ajax({
				url:"/addcollect",
				type:"post",
				data:{username:"${user.username}",pic:"${item.pic}",itemname:"${item.name}",itemdetails:"${item.details}",price:"${item.price}",time:now2,itemid:"${item.id}"}
			})

		}



	});



	//从缓存中获取数据并渲染
	// let msgBoxList = JSON.parse(window.localStorage.getItem('msgBoxList')) || [];
	// innerHTMl(msgBoxList)
	$(function () {

		$.ajax({
			url:"/loadcollect",
			type:"post",
			data:{username:"${user.username}",itemid:"${item.id}"},
			success:function (data) {

				if(data=="true"){
					$('.collectitem').addClass('date-dz-z-click');

					$('.collectitem').addClass('red');
				}
			}
		})


		$.ajax({
			url:"/loadcomment",
			type:"post",
			data:{itemid:"${item.id}",username:"${user.username}"},
			success:function (data) {


				let html ="";
				for(let i=0;i<data.length;i++){

					html+=	`<div class='msgBox'>
					<div class="headUrl">
						<img src="`+data[i].pic+`" width='50' height='50'>

						<div>
							<span class="title">`+data[i].username+`</span>
							<span class="time">`+data[i].time+`</span>
						</div>
						<a class="del">删除</a>&nbsp;|&nbsp;
						<a class="like"><input type="hidden" class="commentid" value="`+data[i].id+`"/><input type="hidden" id="status`+i+`" class="status" value="`+data[i].status+`"/><i class="date-dz-z-click-red hh" id="hh"></i>赞 (<i class="z-num likes">`+data[i].likes+`</i>)</a>
					</div>
					<div class='msgTxt'>`+
						data[i].info+
					`</div>
				</div>`



				}

				// $(".msgCon").prepend(str);
				$(".msgCon").html(html);

				for(let i=0;i<data.length;i++){
					let str="#status"+i;
					let v=$(str).val();
					// console.log(v==1)
					if(v==1){
						$(str).siblings(".hh").addClass('date-dz-z-click red');
					}

				}




				// $.ajax({
				//
				// 	url:"/loadlikes",
				// 	type:"post",
				// 	data:{commentid:$(".commentid").val()},
				// 	success:function (data) {
				// 		let str=".kw"+$(".commentid").val();
				// 		if(data=="true"){
				// 			$(str).addClass('date-dz-z-click red');
				//
				//
				// 		}
				// 	}
				// })

				$(".hh").click(function (e) {
					let t=e.target;

					if($(t).is('.date-dz-z-click')){

						$(t).removeClass('date-dz-z-click red');

						$.ajax({
							url:"/decrlike",
							type:"post",
							data:{itemid:"${item.id}",commentid:$(t).siblings(".commentid").val(),username:"${user.username}"},
							success:function (data) {
								//console.log(data)
								//console.log($(t).siblings(".likes").text());
								$(t).siblings(".likes").text(data);
							}

						})

					}else {

						$(t).addClass('date-dz-z-click');

						$(t).addClass('red');

						$.ajax({
							url:"/addlike",
							type:"post",
							data:{itemid:"${item.id}",commentid:$(t).siblings(".commentid").val(),username:"${user.username}"},
							success:function (data) {
								//console.log(data)
								//console.log($(t).siblings(".likes").text());
								$(t).siblings(".likes").text(data);
							}
						})

					}

				});

			}
		})




	});




	//点击小图片，显示表情
	$(".bq").click(function (e) {
		$(".face").slideDown(); //慢慢向下展开
		e.stopPropagation(); //阻止冒泡事件
	});

	//在桌面任意地方点击，关闭表情框
	$(document).click(function () {
		$(".face").slideUp(); //慢慢向上收
	});

	//点击小图标时，添加功能
	$(".face ul li").click(function () {
		let simg = $(this).find("img").clone();
		$(".message").append(simg); //将表情添加到输入框
	});

	//点击发表按扭，发表内容
	$("span.submit").click(function () {

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
		let now1=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;



		let txt = $(".message").html(); //获取输入框内容
		if (!txt) {
			$('.message').focus(); //自动获取焦点
			return;
		}
		let obj = {
			msg: txt
		}

		$.ajax({
			url:"/savecomment",
			type:"post",
			data:{itemid:"${item.id}",time:now1,txt:txt,username:"${user.username}",pic:"${user.icon}"}
		})

		location.replace(location.href);

		// 重点
		//msgBoxList.unshift(obj) //添加到数组里
		//window.localStorage.setItem('msgBoxList', JSON.stringify(msgBoxList)) //将数据保存到缓存
		// innerHTMl([obj]) //渲染当前输入框内容
		// $('.message').html('') // 清空输入框

	});

	//删除当前数据
	$("body").on('click', '.del', function () {
		let index = $(this).parent().parent().index();
		msgBoxList.splice(index, 1)
		window.localStorage.setItem('msgBoxList', JSON.stringify(msgBoxList)) //将数据保存到缓存
		$(this).parent().parent().remove()
	})


	//渲染html
	function innerHTMl(List) {



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

		List = List || []
		List.forEach(item => {
			let str =
					`<div class='msgBox'>
					<div class="headUrl">
						<img src=${user.icon} width='50' height='50'>
						<div>
							<span class="title">${user.username}</span>
							<span class="time">`+now+`</span>
						</div>
						<a class="del">删除</a>&nbsp;|&nbsp;
						<a class="like"><i class="date-dz-z-click-red hh"></i>赞 (<i class="z-num">0</i>)</a>
					</div>
					<div class='msgTxt'>
						${r" ${item.msg} "}
					</div>
				</div>`
			$(".msgCon").prepend(str);

					$(".hh").click(function () {

						var zNum = $('.z-num').html();
						if($(this).is('.date-dz-z-click')){
							zNum--;
							$(this).removeClass('date-dz-z-click red');
							$('.z-num').html(zNum);
							$('.date-dz-z-click-red').removeClass('red');
						}else {
							zNum++;
							$(this).addClass('date-dz-z-click');
							$('.z-num').html(zNum);
							$('.date-dz-z-click-red').addClass('red');
						}



					});

			// $('.like').on('click','.date-dz-z',function(){
			// 	console.log("hh")
			// 	var zNum = $(this).find('.z-num').html();
			// 	if($(this).is('.date-dz-z-click')){
			// 		zNum--;
			// 		$(this).removeClass('date-dz-z-click red');
			// 		$(this).find('.z-num').html(zNum);
			// 		$(this).find('.date-dz-z-click-red').removeClass('red');
			// 	}else {
			// 		zNum++;
			// 		$(this).addClass('date-dz-z-click');
			// 		$(this).find('.z-num').html(zNum);
			// 		$(this).find('.date-dz-z-click-red').addClass('red');
			// 	}
			// })

		})
	}




</script>


<script type="text/javascript" src="/givelike/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="/givelike/js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
	$(function () {
		$('.content').flexText();
	});
</script>
<!--textarea限制字数-->
<script type="text/javascript">
	function keyUP(t){
		var len = $(t).val().length;
		if(len > 139){
			$(t).val($(t).val().substring(0,140));
		}
	}
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
	$('.commentAll').on('click','.plBtn',function(){
		// var myDate = new Date();
		// //获取当前年
		// var year=myDate.getFullYear();
		// //获取当前月
		// var month=myDate.getMonth()+1;
		// //获取当前日
		// var date=myDate.getDate();
		// var h=myDate.getHours();       //获取当前小时数(0-23)
		// var m=myDate.getMinutes();     //获取当前分钟数(0-59)
		// if(m<10) m = '0' + m;
		// var s=myDate.getSeconds();
		// if(s<10) s = '0' + s;
		// var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
		//获取输入内容
		var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
		console.log(oSize);
		//动态创建评论模块
		oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
		if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
			$(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
			$(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
		}
	});




</script>
<!--点击回复动态创建回复块-->
<#--<script type="text/javascript">-->
<#--	$('.comment-show').on('click','.pl-hf',function(){-->
<#--		//获取回复人的名字-->
<#--		var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();-->
<#--		//回复@-->
<#--		var fhN = '回复@'+fhName;-->
<#--		//var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');-->
<#--		var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';-->
<#--		//显示回复-->
<#--		if($(this).is('.hf-con-block')){-->
<#--			$(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);-->
<#--			$(this).removeClass('hf-con-block');-->
<#--			$('.content').flexText();-->
<#--			$(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');-->
<#--			//console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))-->
<#--			//input框自动聚焦-->
<#--			$(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);-->
<#--		}else {-->
<#--			$(this).addClass('hf-con-block');-->
<#--			$(this).parents('.date-dz-right').siblings('.hf-con').remove();-->
<#--		}-->
<#--	});-->
<#--</script>-->
<#--<!--评论回复块创建&ndash;&gt;-->
<#--<script type="text/javascript">-->
<#--	$('.comment-show').on('click','.hf-pl',function(){-->
<#--		var oThis = $(this);-->
<#--		var myDate = new Date();-->
<#--		//获取当前年-->
<#--		var year=myDate.getFullYear();-->
<#--		//获取当前月-->
<#--		var month=myDate.getMonth()+1;-->
<#--		//获取当前日-->
<#--		var date=myDate.getDate();-->
<#--		var h=myDate.getHours();       //获取当前小时数(0-23)-->
<#--		var m=myDate.getMinutes();     //获取当前分钟数(0-59)-->
<#--		if(m<10) m = '0' + m;-->
<#--		var s=myDate.getSeconds();-->
<#--		if(s<10) s = '0' + s;-->
<#--		var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;-->
<#--		//获取输入内容-->
<#--		var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();-->
<#--		console.log(oHfVal)-->
<#--		var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();-->
<#--		var oAllVal = '回复@'+oHfName;-->
<#--		if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){-->

<#--		}else {-->
<#--			$.getJSON("json/pl.json",function(data){-->
<#--				var oAt = '';-->
<#--				var oHf = '';-->
<#--				$.each(data,function(n,v){-->
<#--					delete v.hfContent;-->
<#--					delete v.atName;-->
<#--					var arr;-->
<#--					var ohfNameArr;-->
<#--					if(oHfVal.indexOf("@") == -1){-->
<#--						data['atName'] = '';-->
<#--						data['hfContent'] = oHfVal;-->
<#--					}else {-->
<#--						arr = oHfVal.split(':');-->
<#--						ohfNameArr = arr[0].split('@');-->
<#--						data['hfContent'] = arr[1];-->
<#--						data['atName'] = ohfNameArr[1];-->
<#--					}-->

<#--					if(data.atName == ''){-->
<#--						oAt = data.hfContent;-->
<#--					}else {-->
<#--						oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;-->
<#--					}-->
<#--					oHf = data.hfName;-->
<#--				});-->

<#--				var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';-->
<#--				oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();-->
<#--			});-->
<#--		}-->
<#--	});-->
<#--</script>-->
<!--删除评论块-->
<script type="text/javascript">
	$('.commentAll').on('click','.removeBlock',function(){
		var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
		if(oT.siblings('.all-pl-con').length >= 1){
			oT.remove();
		}else {
			$(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
			oT.remove();
		}
		$(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

	})
</script>
<!--点赞-->
<script type="text/javascript">
	$('.comment-show').on('click','.date-dz-z',function(){
		var zNum = $(this).find('.z-num').html();
		if($(this).is('.date-dz-z-click')){
			zNum--;
			$(this).removeClass('date-dz-z-click red');
			$(this).find('.z-num').html(zNum);
			$(this).find('.date-dz-z-click-red').removeClass('red');
		}else {
			zNum++;
			$(this).addClass('date-dz-z-click');
			$(this).find('.z-num').html(zNum);
			$(this).find('.date-dz-z-click-red').addClass('red');
		}
	})
</script>


</html>

