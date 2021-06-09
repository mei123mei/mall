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
						<a href="javascript:;">通知公告</a>
						<a href="javascript:;">公告管理</a>
						<a><cite>公告列表</cite></a>
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
                <label class="layui-form-label">选择时间</label>
                <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
                    <input type="text" class="layui-input" id="choosetime" autocomplete="off"/>
                </div>

            </div>


            <div class="layui-card-body">
                <table class="layui-table layui-form">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>公告内容</th>
                        <th>时间</th>
                        <th>管理员</th>
                        <th>操作</th>

                    </tr>
                    </thead>
                    <tbody id="content">
                    <#list notice as notices>
                        <tr>
                            <td>${notices.id}</td>
                            <td>${notices.info}</td>

                            <td>${notices.time}

                            </td>
                            <td>${notices.username}</td>
                            <td>

                                <a class="layui-btn layui-btn-sm layui-btn-danger" title="删除"
                                   onclick="del(this)" >
                                    <i class="layui-icon layui-icon-delete"></i>删除</a>
                            </td>
                        </tr>
                    </#list>

                    </tbody>
                </table>
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
    // function del(){
    //     if(!confirm("确认要删除？")){
    //         window.event.returnValue = false;
    //     }
    // }

    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#choosetime' //指定元素
            ,done: function(value, date){ //监听日期被切换
                // lay('#choosetime').val(value);
                // console.log($("#choosetime").val())
                $.ajax({
                    url:"/searchbytime",
                    type: "post",
                    data:{time:$("#choosetime").val()},
                    success:function (data) {
                        // console.log(data)
                    let html="";
                    for(let i=0;i<data.length;i++){
                        html+=`<tr>
                            <td>`+data[i].id+`</td>
                            <td>`+data[i].info+`</td>

                            <td>`+data[i].time+`

                            </td>
                            <td>`+data[i].username+`</td>
                            <td>

                                <a class="layui-btn layui-btn-sm layui-btn-danger" title="删除"
                                   onclick="del(this)" >
                                    <i class="layui-icon layui-icon-delete"></i>删除</a>
                            </td>
                        </tr>`;
                    }
                    $("#content").html(html);

                    }
                })

            }
        });
    });



    // $('#choosetime').blur(function () {
    //    console.log($(this).val())
    //
    //
    // });


    function del(btn) {
        let id = $(btn).parent().parent().children().eq(0).text();

        // var t=e.target;
        // console.log($(t).text())
       //console.log($(this).html())
        layer.alert('确定提交吗？', {
            skin: 'layui-layer-molv' //样式类名 自定义样式
            , closeBtn: 1 // 是否显示关闭按钮
            , title : '删除！！' //标题
            , anim: 1 //动画类型
            , btn: ['确定', '取消'] //按钮
            , yes: function() {　　　　　　　　　 //这里也可以写响应的ajax请求
                // console.log($(t).parent().text())
                // console.log(id, '------------')
                $.ajax({
                    url:"/delnotice",
                    data:{id:id},
                    success:function () {
                        window.location.href="/noticelist"
                    }
                })


                 // window.location.href="/noticelist"

            }
            , btn2: function () {
                layer.msg('取消')
            }
        })
    }

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

</script>