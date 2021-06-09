
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta name="renderer" content="webkit">
    <title>我的收藏</title>
<#--    <link rel="shortcut icon" type="image/x-icon" href="cart/img/icon/favicon.ico">-->
    <link rel="stylesheet" type="text/css" href="cart/css/base.css">
    <link rel="stylesheet" type="text/css" href="cart/css/home.css">
    <script type="text/javascript" src="cart/js/jquery.js"></script>
    <script type="text/javascript" src="cart/js/index.js"></script>
    <script type="text/javascript" src="cart/js/modernizr-custom-v2.7.1.min.js"></script>

    <link rel="stylesheet" href="mall/css/base.css">
    <link rel="stylesheet" href="mall/css/index.css">
    <script type="text/javascript" src="mall/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="mall/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="mall/js/banner.index.js"></script>
    <script type="text/javascript" src="mall/js/hun.index.js"></script>

</head>
<body>

<div class="w-all w-minw bg-cf5f5f5 ovhidden">
    <div class="w-main m-auto">
        <div class="fl"> <span class="fs-14 line-h30 ftc-6b6b6b dsblock fl"> 送货至：广东省广州市番禺区 </span> <a href="#" class="tx-ind dsblock w-12 fl bg_icon add-sele m-l-5 hg-30">地址选择</a> <a href="#" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">${user.username}</a> <a href="/login" class="dsblock fl line-h30 fs-14 ftc-e23435 m-l-40">退出登录</a></div>
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

<section id="pc-jie">
    <div class="center ">
        <ul class="pc-shopping-title clearfix">
            <li><a href="#" class="cu">全部收藏(<i class="i-num">0</i>)</a></li>
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
<#--                &lt;#&ndash;                <a href="#">删除</a>&ndash;&gt;-->
<#--                &lt;#&ndash;                <a href="#">清楚失效商品</a>&ndash;&gt;-->
<#--            </div>-->
<#--            <div class="fr pc-shop-fr">-->
<#--                &lt;#&ndash;                <p>共有 <em class="red pc-shop-shu">2</em> 款商品</p>&ndash;&gt;-->
<#--                &lt;#&ndash;                <span>¥ 699.00</span>&ndash;&gt;-->
<#--                <a href="my-add.html">下架</a>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
</section>




</body>
<script>



    $(function () {
        $.ajax({
            url:"/loadlist",
            type:"post",
            data:{username:"${user.username}"},
            success:function (list) {
                $(".i-num").text(list.length);

                let html="";
                for(let i=0;i<list.length;i++){
                    html+=`<tr>
                    <th>  </th>
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
                    <th><a href="#">取消收藏</a>

                    </th>
                </tr>`;

                    $("#list").html(html);
                }
            }
        })
    });
</script>
</html>