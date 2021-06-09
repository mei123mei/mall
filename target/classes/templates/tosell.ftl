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


<div class="layui-fluid">
    <div class="layui-col-md12">
        <form class="layui-form layui-form-pane" action="/additem" id="frm-reg" onsubmit='return addTime()' >

            <div class="layui-form-item">
                <label class="layui-form-label">商品图片</label>

                <img id="pic" src="/images/nopic.jpg" style="width: 300px;height: 300px;margin-top: 26px;margin-left: 40px;float: left;"/>
<#--                <div>-->
<#--                    <form action="/upload" enctype="multipart/form-data" method="post">-->
<#--                        <input type="file" name="file" />-->
<#--                        <input type="submit" value="更换"/>-->
<#--                    </form>-->

<#--                </div>-->

            </div>

            <div class="layui-form-item">


                <div class="layui-form-mid layui-word-aux"><button type="button" class="layui-btn layui-btn-primary"  id="up" style="margin-top: -8px;">添加图片</button> &nbsp;图片规格推荐500*500</div>
            </div>

            <input type="hidden" name="pic" id="hid" value="/images/nopic.jpg"/>
            <input type="hidden" name="time" id="time" value=""/>



            <div class="layui-form-item">
                <label class="layui-form-label">商品名</label>
                <div class="layui-input-inline layer-inputs">
                    <input type="text" name="name" id="email" value="" placeholder="请输入商品名" class="layui-input" required>
                </div>

            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">商品信息</label>
                <div class="layui-input-inline layer-inputs">
                    <input type="text" name="details" id="address" value="" placeholder="请输入商品信息" class="layui-input" required>
                </div>

            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">单价/元</label>
                <div class="layui-input-inline layer-inputs">
                    <input type="text" name="price" id="address" value="" placeholder="请输入单价" class="layui-input" required>
                </div>

            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">库存/件</label>
                <div class="layui-input-inline layer-inputs">
                    <input type="text" name="stock" id="address" value="" placeholder="请输入库存" class="layui-input" required>
                </div>

            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">标签</label>
                <div class="layui-input-inline layer-inputs">
                    <input type="text" name="tags" id="tags" value="" placeholder="请输入标签" class="layui-input" required>一个或多个标签,以空格分隔
                </div>

            </div>


            <div class="layui-form-item">


                <div class="layui-form-mid layui-word-aux"><button type="submit" class="layui-btn layui-btn-primary" style="margin-top: -8px;">上架商品</button></div>
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
<script>
    layui.use('upload', function(){
        let upload = layui.upload;


        //执行实例
        let uploadInst = upload.render({
            elem: '#up' //绑定元素
            ,url: '/itempicupload' //上传接口
            ,size: ${maxsize}
            ,done: function(data){
                let path=data.path;
                // console.log(path)
                //上传完毕回调
                // $("#pic").src(mix);
                $("#pic").attr('src',path);
                $("#hid").val(path);

            }
            ,error: function(){
                //请求异常回调

            }
        });
    });



    function addTime(){
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

        $("#time").val(now);

        return true;
    }



</script>