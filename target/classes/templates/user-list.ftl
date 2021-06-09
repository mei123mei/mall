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
						<a href="javascript:;">用户管理</a>
						<a><cite>用户列表</cite></a>
					</span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;float:right;height: 36px;"
               href="javascript:location.replace(location.href);" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:36px;font-size: 16px;"></i>
            </a>
        </div>
    </div>
    <div class="layui-col-md12">
        <div class="layui-card">
            <div class="layui-card-body ">
<#--                <form class="layui-form layui-col-space5">-->

                    <div class="layui-inline layui-show-xs-block">
                        <input type="text" id="kw" name="keyword" value="" placeholder="请输入用户名称" autocomplete="off"
                               class="layui-input">
                    </div>
                    <div class="layui-inline layui-show-xs-block">
                        <button class="layui-btn" id="searchButton" lay-submit="" lay-filter="sreach"><i
                                    class="layui-icon">&#xe615;</i></button>
                    </div>
<#--                </form>-->
            </div>
            <div class="layui-card-header">
                <button class="layui-btn" onclick="execute_open('添加角色', 'role_operation.html', '1000', '800')"><i
                            class="layui-icon"></i>添加用户
                </button>
            </div>
            <div class="layui-card-body">
                <table class="layui-table layui-form">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>用户名称</th>
                        <th>用户角色</th>
                        <th>状态</th>
                        <th>管理</th>
                    </tr>
                    </thead>
                    <tbody id="content">
                    <#list list as users>
                        <tr>
                            <td>${users.id}</td>
                            <td>${users.username}</td>
                            <#if users.role=="1">
                                <td>管理员</td>
                            </#if>
                            <#if users.role=="0">
                                <td>普通用户</td>
                            </#if>
                            <td><input type="checkbox" name="switch" lay-skin="switch" data-url="" value="1" data-id="1"
                                       title="状态" lay-text="启用|禁用" checked="checked"></td>
                            <td>
                                <a class="layui-btn layui-btn-sm layui-btn-normal" title="编辑"
                                   onclick="execute_open('编辑角色', 'role_operation.html?id=1', 1000, 800)"
                                   href="javascript:;"><i class="layui-icon layui-icon-edit"></i>编辑</a>
                                <a class="layui-btn layui-btn-sm layui-btn-danger" title="删除"
                                   onclick="execute_del(this, 1, '')" href="javascript:;"><i
                                            class="layui-icon layui-icon-delete"></i>删除</a>
                            </td>
                        </tr>
                    </#list>

                    </tbody>
                </table>
            </div>
            <div class="page" style="text-align: center">
                <ul class="pagination">
                    <li class="disabled"><#if data.prePage==0><a id="a1" href="/l?pageNum=1">上一页</a> <#else><a
                            href="/l?pageNum=${data.prePage}">上一页</a></#if></li>
                    <#if (data.curPage<2)>
                        <li class="active"><a href="/l?pageNum=1">1</a></li>
                        <li><a href="/l?pageNum=2">2</a></li>
                        <li><a href="/l?pageNum=3">3</a></li>

                        <#if (data.curPage>=data.pages)>
                            <li class="active"><a href="/l?pageNum=${data.pages-2}">${data.pages-2}</a></li>
                            <li><a href="/l?pageNum=${data.pages-1}">${data.pages-1}</a></li>
                            <li><a href="/l?pageNum=${data.pages}">${data.pages}</a></li>
                        </#if>

                    <#else>
                        <li class="active"><a href="/l?pageNum=${data.prePage}">${data.prePage}</a></li>
                        <li><a href="/l?pageNum=${data.curPage}">${data.curPage}</a></li>
                        <li><a href="/l?pageNum=${data.nextPage}">${data.nextPage}</a></li>
                    </#if>

                    <#--							<li><a href="javascript:;">4</a></li> -->
                    <li><#if (data.nextPage>data.pages||data.nextPage==0)><a href="/l?pageNum=${data.pages}">
                                下一页</a> <#else><a href="/l?pageNum=${data.nextPage}">下一页</a></#if></li>
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