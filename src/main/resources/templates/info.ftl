<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>后台管理</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link rel="stylesheet" href="lib/layui/css/layui.css" media="all">
		<link rel="stylesheet" href="css/admin.css" media="all">
		<link rel="stylesheet" href="mall/css/base.css">
		<link rel="stylesheet" href="mall/css/index.css">
	</head>
	<body>

	<div class="w-all w-minw bg-cf5f5f5 ovhidden">
		<div class="w-main m-auto">
			<div class="fl"> <span class="fs-14 line-h30 ftc-6b6b6b dsblock fl"> 送货至：广东省广州市番禺区 </span>  <a href="#" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">${user.username}</a> <a href="/login" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">退出登录</a></div>
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


        <div class="layui-fluid" style="position: relative;left: 40%;">
			<div class="layui-col-md12">
				<form class="layui-form layui-form-pane" action="" id="frm-reg" >

					<div class="layui-form-item" style="    padding-left: 100px;">
						<img id="images_url" src="${user.icon}" style="width: 80px;height: 80px;border: 1px solid #cccccc;border-radius: 50%;">
<#--						<div class="layui-progress layui-progress-big" lay-showpercent="true" lay-filter="layui_progress" style="width: 30%;position: relative;top: 5px;">-->
<#--							<div class="layui-progress-bar layui-bg-normal" lay-percent="0%"></div>-->
<#--						</div>-->
					</div>

					<div class="layui-form-item" style="    padding-left: 100px;">


						<div class="layui-form-mid layui-word-aux"><button type="button" class="layui-btn layui-btn-primary" data-name="portrait" data-place="system" id="upload_pictures" style="margin-top: -8px;">更换头像</button></div>
					</div>



<#--					<div class="layui-form-item">-->
<#--						<label class="layui-form-label">用户名</label>-->
<#--						<div class="layui-input-inline layer-inputs">-->
<#--							<input type="text" name="name" id="name" value="${user.username}" placeholder="请输入用户名" class="layui-input">-->
<#--						</div>-->
<#--<!--						<div class="layui-form-mid layui-word-aux">请输入管理员姓名</div>&ndash;&gt;-->
<#--					</div>-->
					<div class="layui-form-item">
						<label class="layui-form-label">邮箱</label>
						<div class="layui-input-inline layer-inputs">
							<input type="text" name="name" id="email" value="${email!"3175185905@qq.com"}" placeholder="请输入邮箱" class="layui-input">
						</div>
						<!--						<div class="layui-form-mid layui-word-aux">请输入管理员姓名</div>-->
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">地址</label>
						<div class="layui-input-inline layer-inputs">
							<input type="text" name="name" id="address" value="广东省广州市番禺区" placeholder="请输入地址" class="layui-input">
						</div>

					</div>








<#--					<div class="layui-form-item" style="margin-left: 50px;">-->
<#--						<input type="hidden" name="request_url" id="request_url" value="">-->
<#--						<input type="hidden" name="id" id="id" value="">-->
<#--						<button class="layui-btn layui-btn-warm" id="execute" lay-submit="execute" lay-filter="execute"><i class="layui-icon layui-icon-form"></i>更改保存</button>-->
<#--					</div>-->
				</form>
			</div>
		</div>
    </body>
</html>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="js/admin.js"></script>