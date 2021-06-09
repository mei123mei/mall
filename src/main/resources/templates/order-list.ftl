<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="css/admin.css" media="all">
</head>
<body>
<div class="layui-fluid">
    <div class="layui-col-md12">
        <div class="layui-navs">
					<span class="layui-breadcrumb" lay-separator="—">
						<a href="javascript:;">内容管理</a>
						<a href="javascript:;">账单管理</a>
						<a><cite>账单列表</cite></a>
					</span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;float:right;height: 36px;"
               href="javascript:location.replace(location.href);" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:36px;font-size: 16px;"></i>
            </a>
        </div>
    </div>
    <div class="layui-col-md12">
        <div class="layui-card">

<#--            <div class="layui-card-body ">-->
<#--                &lt;#&ndash;                <form class="layui-form layui-col-space5">&ndash;&gt;-->

<#--                <div class="layui-inline layui-show-xs-block">-->
<#--                    <input type="text" id="kw" name="keyword" value="" placeholder="请输入商品名称" autocomplete="off"-->
<#--                           class="layui-input">-->
<#--                </div>-->
<#--                <div class="layui-inline layui-show-xs-block">-->
<#--                    <button class="layui-btn" id="searchButton" lay-submit="" lay-filter="sreach"><i-->
<#--                                class="layui-icon">&#xe615;</i></button>-->
<#--                </div>-->
<#--                &lt;#&ndash;                </form>&ndash;&gt;-->
<#--            </div>-->
            <#--            <div class="layui-card-header">-->
            <#--                <button class="layui-btn" onclick="execute_open('添加角色', 'role_operation.html', '1000', '800')"><i-->
            <#--                            class="layui-icon"></i>添加用户-->
            <#--                </button>-->
            <#--            </div>-->


            <div class="layui-card-body">
                <table class="layui-table layui-form">
                    <thead>

                    <tr>
                        <th>商品id</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>总价</th>
                        <th>时间</th>
                        <th>买家</th>
                        <th>卖家</th>
                    </tr>
                    </thead>
                    <tbody id="content">
                    <#list list as items>
                        <tr>
                            <td>${items.itemid}</td>
                            <td>${items.singleprice}</td>

                            <td>${items.num}
                            <td>
                                ${items.countprice}
                            </td>
                            <td>${items.time}</td>
                            <td>${items.buyer}</td>
                            <td>${items.seller}</td>
                        </tr>
                    </#list>

                    </tbody>
                </table>
            </div>
            <div class="page" style="text-align: center">
                <ul class="pagination">
                    <li class="disabled"><#if data.prePage==0><a id="a1" href="/order?pageNum=1">上一页</a> <#else><a
                            href="/order?pageNum=${data.prePage}">上一页</a></#if></li>
                    <#if (data.pages==1)>
                    <li class="active"><a href="/order?pageNum=1">1</a></li>
                    </#if>

                    <#if (data.pages==2)>
                    <li class="active"><a href="/order?pageNum=1">1</a></li>
                    <li><a href="/order?pageNum=2">2</a></li>
                   </#if>

                    <#if (data.pages==3)>
                        <li class="active"><a href="/order?pageNum=1">1</a></li>
                        <li><a href="/order?pageNum=2">2</a></li>
                        <li><a href="/order?pageNum=3">3</a></li>
                    </#if>

<#--                    <#if (data.curPage<2&&data.pages==3)>-->
<#--                        <li class="active"><a href="/order?pageNum=1">1</a></li>-->
<#--                        <li><a href="/order?pageNum=2">2</a></li>-->
<#--                        <li><a href="/order?pageNum=3">3</a></li>-->

<#--                        <#if (data.curPage>=data.pages)>-->
<#--                            <li class="active"><a href="/order?pageNum=${data.pages-2}">${data.pages-2}</a></li>-->
<#--                            <li><a href="/order?pageNum=${data.pages-1}">${data.pages-1}</a></li>-->
<#--                            <li><a href="/order?pageNum=${data.pages}">${data.pages}</a></li>-->
<#--                        </#if>-->

<#--                    <#else>-->
<#--                        <li class="active"><a href="/order?pageNum=${data.prePage}">${data.prePage}</a></li>-->
<#--                        <li><a href="/order?pageNum=${data.curPage}">${data.curPage}</a></li>-->
<#--                        <li><a href="/order?pageNum=${data.nextPage}">${data.nextPage}</a></li>-->
<#--                    </#if>-->

                    <#--							<li><a href="javascript:;">4</a></li> -->
                    <li><#if (data.nextPage>data.pages||data.nextPage==0)><a href="/order?pageNum=${data.pages}">
                                下一页</a> <#else><a href="/order?pageNum=${data.nextPage}">下一页</a></#if></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="js/admin.js"></script>
<script>
    /*function getQueryVariable(variable)
    {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if(pair[0] == variable){return pair[1];}
        }
        return(false);
    }*/


    window.onload = () => {
        let a=${data.pages}
            console.log(a)


        $("#searchButton").click(function () {
            $.ajax({
                url: "/search",
                data: {"keyword": $("#kw").val()},
                type: "post",
                success: function (result) {
                    debugger
                    let data = result
                    let html = "";
                    for (let i = 0; i < data.length; i++) {
                        html += `<tr>` +
                            `<td>${r" ${data[i].id} "}</td>` +
                            `<td>${r" ${data[i].username} "}</td>` +
                            `</tr>`;
                    }
                    $("#content").html(html);
                }
            });
        })
    }
    /*$(function () {
        let pageNum = getQueryVariable("pageNum");
        // let keyword = getQueryVariable("keyword");
        // if(!keyword){
        // 	keyword = '';
        // }

        if(!pageNum){
            pageNum = 1;
        }
        // $("#a1").href()
    });*/

</script>