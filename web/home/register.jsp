<%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/4/8
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css"/>
    <link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
    <link href="../css2/mycss.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="login-boxtitle">
    <a href="index.jsp"><img alt="" src="../pic/logo.png"/></a>
</div>

<div class="res-banner">
    <div class="frombox">
        <form class="from" action="register.action" method="post">
            <table border="1">
                <tr>
                    <th>姓名 ：</th>
                    <td><input type="text" name="cname" placeholder="姓名"></td>
                </tr>
                <tr>
                    <th>性别：</th>
                    <td><input type="radio" name="csex" value="男" style="width: 15px;height: 15px;">男
                        <input type="radio" name="csex" value="女" style="width: 15px;height: 15px;">女
                    </td>
                </tr>
                <tr>
                    <th>手机号：</th>
                    <td><input type="text" name="ctel" placeholder="手机号"></td>
                </tr>
                <tr>
                    <th>身份证：</th>
                    <td><input type="text" name="ccard" placeholder="身份证"></td>
                </tr>
                <tr>
                    <th>输入密码：</th>
                    <td><input type="password" name="cpassword" placeholder="密码"></td>
                </tr>
                <tr>
                    <th>确认密码：</th>
                    <td><input type="password" placeholder="确认密码"></td>
                </tr>
            </table>
            <div class="but"><input type="submit"></div>

        </form>
    </div>

</div>
<div class="footer ">
    <div class="footer-hd ">
        <p>
            <a href="# ">AKU科技</a>
            <b>|</b>
            <a href="# ">首页</a>
            <b>|</b>
            <a href="# ">支付宝</a>
            <b>|</b>

        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="# ">关于AKU</a>
            <a href="# ">合作伙伴</a>
            <a href="# ">联系我们</a>
            <a href="# ">网站地图</a>
            <em>© 2015-2025 aku.edu.cn版权所有. <a href="http://www.aku.edu.cn/" target="_blank">学校官网</a> - Collect from <a
                    href="http://www.aku.edu.cn/" title="学校官网" target="_blank">学校官网</a></em>
        </p>
    </div>
</div>
</body>
</body>
</html>
