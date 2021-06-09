<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>更换广告</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="css/admin.css" media="all">
</head>
<body>
<div class="layui-fluid">
    <div class="layui-col-md12">
        <div class="layui-navs">
					<span class="layui-breadcrumb" lay-separator="—">
						<a href="javascript:;">内容管理</a>
						<a href="javascript:;">广告管理</a>
						<a><cite>更换广告</cite></a>
					</span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;float:right;height: 36px;" href="javascript:location.replace(location.href);" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:36px;font-size: 16px;"></i>
            </a>
        </div>
    </div>
    <div class="layui-col-md12">
        <form class="layui-form layui-form-pane" action="/changead" id="frm-reg" method="post" >

            <div class="layui-form-item">
                <label class="layui-form-label">广告图片</label>

                <img id="pic" src="/images/nopic.jpg" style="width: 300px;height: 300px;margin-top: 26px;margin-left: 40px;float: left;"/>

            </div>

            <div class="layui-form-item">


                <div class="layui-form-mid layui-word-aux"><button type="button" class="layui-btn layui-btn-primary"  id="up" style="margin-top: -8px;">添加图片</button> 建议图片规格1480*520</div>
            </div>

            <input type="hidden" name="pic" id="hid" value="/images/nopic.jpg"/>



            <div class="layui-form-item" style="width: 200px;">
                <label class="layui-form-label">选择广告位</label>
                <div class="layui-input-block">
                    <select name="ad"  lay-verify="required">
                        <option value=""></option>
                        <option value="ad1">1</option>
                        <option value="ad2">2</option>
                        <option value="ad3">3</option>
                        <option value="ad4">4</option>
                        <option value="ad5">5</option>
                    </select>
                </div>
                </div>



            <div class="layui-form-item">


                <div class="layui-form-mid layui-word-aux"><button type="submit" class="layui-btn layui-btn-normal" style="margin-top: -8px;">提交</button></div>
            </div>

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
            ,url: '/adupload' //上传接口
            <#--,size: ${maxsize}-->
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

</script>
