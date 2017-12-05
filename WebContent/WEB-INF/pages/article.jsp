<%--
  Created by IntelliJ IDEA.
  User: jin2ml
  Date: 2017/12/4
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用layui</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>方框风格的表单集合</legend>
</fieldset>
<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">长输入框</label>
        <div class="layui-input-block">
            <input type="text" name="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">短输入框</label>
        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">日期选择</label>
            <div class="layui-input-block">
                <input type="text" name="date" id="date1" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">行内表单</label>
            <div class="layui-input-inline">
                <input type="text" name="number" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">请务必填写用户名</div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">范围</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid">-</div>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">单行选择框</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value=""></option>
                <option value="0">写作</option>
                <option value="1" selected="">阅读</option>
                <option value="2">游戏</option>
                <option value="3">音乐</option>
                <option value="4">旅行</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">行内选择框</label>
        <div class="layui-input-inline">
            <select name="quiz1">
                <option value="">请选择省</option>
                <option value="浙江" selected="">浙江省</option>
                <option value="你的工号">江西省</option>
                <option value="你最喜欢的老师">福建省</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz2">
                <option value="">请选择市</option>
                <option value="杭州">杭州</option>
                <option value="宁波" disabled="">宁波</option>
                <option value="温州">温州</option>
                <option value="温州">台州</option>
                <option value="温州">绍兴</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz3">
                <option value="">请选择县/区</option>
                <option value="西湖区">西湖区</option>
                <option value="余杭区">余杭区</option>
                <option value="拱墅区">临安市</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">开关-开</label>
        <div class="layui-input-block">
            <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">单选框</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" checked="">
            <input type="radio" name="sex" value="女" title="女">
            <input type="radio" name="sex" value="禁" title="禁用" disabled="">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">文本域</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>
    </div>
</form>

<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [/(.+){6,12}$/, '密码必须6到12位']
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });


    });
</script>

</body>
</html>