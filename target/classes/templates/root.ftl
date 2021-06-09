<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>后台管理</title>
		<link rel="stylesheet" href="lib/layui/css/layui.css">
		<link rel="stylesheet" href="css/admin.css">
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">后台管理</div>
				 头部区域（可配合layui已有的水平导航）
				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item layui-this" data-nav="1"><a href="javascript:;">内容管理</a></li>
					<li class="layui-nav-item" data-nav="2"><a href="javascript:;">通知公告</a></li>
				</ul>
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="${user.icon!""}" class="layui-nav-img">${user.username!a}
						</a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;">基本资料</a></dd>
							<dd><a href="javascript:;">安全设置</a></dd>
							<dd><a href="/login">退出登录</a></dd>
						</dl>
					</li>
<#--					<li class="layui-nav-item"><a href="">首页</a></li>-->
				</ul>
			</div>
			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll" id="layui_nav_left_1">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree"  lay-filter="test">
						<li class="layui-nav-item layui-nav-itemed">
							<a class="" href="javascript:;">网站设置</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/setBasic">基本设置</a></dd>
								<dd><a href="javascript:;" data-url="/setUpload">上传设置</a></dd>
<!--								<dd><a href="javascript:;" data-url="/test">水印设置</a></dd>-->
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">用户管理</a>
							<dl class="layui-nav-child">
<!--								<dd><a href="javascript:;" data-url="admin-list.html">管理员列表</a></dd>-->
								<dd><a href="javascript:;" data-url="/l?pageNum=1">用户列表</a></dd>
<!--								<dd><a href="javascript:;" data-url="/s">权限列表</a></dd>-->
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">广告管理</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/ad">更换广告</a></dd>
<!--								<dd><a href="javascript:;" data-url="cache.html">清空缓存</a></dd>-->
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">商品管理</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/i?pageNum=1">商品列表</a></dd>
								<!--								<dd><a href="javascript:;" data-url="cache.html">清空缓存</a></dd>-->
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">账单管理</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/order?pageNum=1">查看账单</a></dd>
								<!--								<dd><a href="javascript:;" data-url="cache.html">清空缓存</a></dd>-->
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">评论管理</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/comment?pageNum=1">评论列表</a></dd>
								<!--								<dd><a href="javascript:;" data-url="cache.html">清空缓存</a></dd>-->
							</dl>
						</li>
					</ul>
				</div>
				<div class="layui-side-scroll" id="layui_nav_left_2">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree"  lay-filter="test">
						<li class="layui-nav-item layui-nav-itemed">
							<a class="" href="javascript:;">公告管理</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" data-url="/notice">新增公告</a></dd>
								<dd><a href="javascript:;" data-url="/noticelist">公告列表</a></dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<div class="layui-body" id="LAY_app_body">
				<div class="layui-tabsbody-item layui-show">
					<iframe src="/l?pageNum=1" frameborder="0" class="layui-iframe" style="padding: 15px;"></iframe>
				</div>
			</div>
<#--			<div></div>-->
			<div class="layui-footer">
				<!-- 底部固定区域 -->
				© 后台管理
			</div>
		</div>
	</body>
</html>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="js/admin.js"></script>