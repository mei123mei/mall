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

    <link rel="stylesheet" type="text/css" href="cart/css/base.css">
    <link rel="stylesheet" type="text/css" href="cart/css/home.css">
    <script type="text/javascript" src="cart/js/jquery.js"></script>
    <script type="text/javascript" src="cart/js/index.js"></script>
    <script type="text/javascript" src="cart/js/modernizr-custom-v2.7.1.min.js"></script>


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


<#--<div class="layui-fluid" style="width: fit-content;">-->
<div class="layui-fluid" style="position: relative;left: 45%;">
    <div class="layui-col-md12">


            <div class="layui-form-item">
                <img id="images_url" src="${user.icon}" style="width: 80px;height: 80px;border: 1px solid #cccccc;border-radius: 50%;">

            </div>

            <div class="layui-form-item" >

                <div class="layui-form-mid layui-word-aux" ><button type="button" id="tosell" class="layui-btn layui-btn-danger"  style="margin-top: -8px;">发布商品</button></div>
            </div>


    </div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<section id="pc-jie">

    <div class="center ">
        <ul class="pc-shopping-title clearfix">

            <li style="width: -webkit-fill-available;"><a href="#" class="cu">全部商品(<i class="i-num">0</i>)</a></li>
            <!--            <li><a href="#">限时优惠(7)</a></li>-->
            <!--            <li><a href="#">库存紧张(0)</a></li>-->
        </ul>
    </div>
    <div class="pc-shopping-cart center">
        <div class="pc-shopping-tab">
            <table>
                <thead>
                <tr class="tab-0">
                    <th class="tab-1">图片</th>
                    <th class="tab-2">商品名称</th>
                    <th class="tab-3">商品信息</th>
                    <th class="tab-4">单价</th>
                    <th class="tab-5">库存</th>
                    <th class="tab-6">上架时间</th>
                    <th class="tab-7">操作</th>
                </tr>
                </thead>
                <tbody id="list">





                </tbody>
            </table>

        </div>
    </div>
    <div style="height:10px"></div>
<#--    <div class="center">-->
<#--        <div class="clearfix pc-shop-go">-->
<#--            <div class="fl pc-shop-fl">-->
<#--                <input type="checkbox" placeholder="">-->
<#--                <label for="">全选</label>-->
<#--&lt;#&ndash;                <a href="#">删除</a>&ndash;&gt;-->
<#--&lt;#&ndash;                <a href="#">清楚失效商品</a>&ndash;&gt;-->
<#--            </div>-->
<#--            <div class="fr pc-shop-fr">-->
<#--&lt;#&ndash;                <p>共有 <em class="red pc-shop-shu">2</em> 款商品</p>&ndash;&gt;-->
<#--&lt;#&ndash;                <span>¥ 699.00</span>&ndash;&gt;-->
<#--                <a href="my-add.html">下架</a>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
</section>









</body>
</html>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="js/admin.js"></script>
<script>



    $(function () {
        $.ajax({
            url:"/onsale",
            type:"post",
            data:{username:"${user.username}"},
            success:function (list) {
                $(".i-num").text(list.length);

               let html="";
               for(let i=0;i<list.length;i++){
                   html+=`<tr>
                    <th></th>
                    <th class="tab-th-1">
                        <a href="#"><img src="`+list[i].pic+`" width="100%" alt=""></a>
                        <a href="#" class="tab-title">`+list[i].itemname+`</a>
                    </th>
                    <th>
                    `+list[i].itemdetails+`
                    </th>
                    <th>

                        <p class="red">`+list[i].price+`</p>
                    </th>
                    <th>

                     `+list[i].stock+`

                    </th>
                    <th >`+list[i].time+`</th>
                    <th><a href="#">修改</a>
                        <a href="#">下架</a>
                    </th>
                </tr>`;

                   $("#list").html(html);



               }
                $("#tosell").click(function () {
                    window.location.href="/tosell";
                });


            }
        })
    });
</script>