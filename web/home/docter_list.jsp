<%@ page import="entity.Customer" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="entity.Doctor" %><%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/4/9
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<!--
TODO
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约挂号</title>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/fy.css" rel="stylesheet" type="text/css"/>


    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <link href="../css2/mycss.css" rel="stylesheet" type="text/css">
    <script>

        window.onload = function () {
            var uu = document.getElementById("uu");
            uu.onclick = function () {
                alert("您已预约成功");
            }
        }
    </script>
</head>
<body>
<%! Customer customer = null;%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <%
                        Customer customer = (Customer) session.getAttribute("loginUser");
                        if (customer != null) {
                            out.print("欢迎" + customer.getCname() + "<a href=lout>退出</a> ");
                        } else {
                            out.print("<a href=\"login.html\" target=\"_top\" class=\"h\">亲，请登录</a>\n" +
                                    "<a href=\"register.jsp\" target=\"_top\">免费注册</a>");
                        }
                    %>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#" target="_top" class="h">首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>

            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
                </div>
            </div>
        </ul>
    </div>
</div>
<!--悬浮搜索框-->

<div class="nav white">
    <div class="logo"><img src="../pic/logo.png"/></div>
    <div class="logoBig">
        <li><img src="../pic/logo.png"/></li>
    </div>

    <div class="search-bar pr">
        <a name="index_none_header_sysc" href="#"></a>
        <form>
            <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
            <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
        </form>
    </div>
</div>

<div class="clear"></div>
<b class="line"></b>
<div class="shopNav">
    <div class="slideall" style="height: auto;">
        <div class="long-title"><span class="all-goods">常见科室</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="index.jsp">首页</a></li>
                <li class="qc"><a href="jkzsk.jsp">健康知识库</a></li>
                <li class="qc"><a href="order.jsp">预约挂号</a></li>
                <li class="qc"><a href="myyuyue.jsp">我的预约</a></li>
                <li class="qc last"><a href="liuyan.html">留言板</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="box">
    <div class="biaoti">
        <h1 class="jiuzheng">请选择就诊医生</h1>
    </div>
    <div class="left">
        <div class="inner">
            <img src="../pic/kefu0.jpg">
            <h1>点击咨询客服</h1>
        </div>
        <div class="inner">
            <img src="../pic/kefu1.jpg">
            <h1>健康的生活方式</h1>
        </div>
        <div class="qq">
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes">
                <img src="../pic/qqs.png">
            </a>
        </div>
    </div>

    <div class="right">
        <div class="table">
            <table class="fy">
                <tr>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>职位</td>
                    <td>年龄</td>
                    <td>剩余</td>
                    <td>预约</td>
                </tr>

                <%
                    Set set = (Set) session.getAttribute("docterSet");
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        out.print("<tr>");
                        Doctor doctor = (Doctor) it.next();
                        out.print("<td>" + doctor.getDname() + "</td><td>" + (doctor.getDsex() == 1 ? '男' : '女') + "</td><td>"
                                + doctor.getDtitle() + "</td><td>" + "年龄" + "</td><td>"
                                + doctor.getDfree() + "</td><td>"
                                + "<a href = order_docter.action?did=" + doctor.getDid() + " class='yy' id='uu'>预约</a></td>");
                        out.print("<tr>");

                    }
                %>
            </table>
        </div>
    </div>
</div>
<div class="footer ">
    <div class="footer-hd ">
        <p>
            <a href="# ">AKU科技</a>
            <b>|</b>
            <a href="index.jsp">首页</a>
            <b>|</b>
            <a href="# ">支付宝</a>

        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="# ">关于我们</a>
            <a href="# ">合作伙伴</a>
            <a href="# ">联系我们</a>
            <a href="# ">网站地图</a>
            <em>© 2015-2025 Aku.edu 版权所有</em>
        </p>
    </div>
</div>
</body>
</html>
