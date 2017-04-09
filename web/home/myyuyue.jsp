<%@ page import="entity.Customer" %>
<%@ page import="entity.Doctor" %><%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/4/8
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的预约</title>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <link href="../css2/mycss.css" rel="stylesheet" type="text/css">
</head>
<body>
<%! Customer customer = null;
    Doctor doctor = null;
%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <%
                    customer = (Customer) session.getAttribute("loginUser");
                    if (customer != null) {
                        out.print("欢迎" + customer.getCname() + "<a href=lout>退出</a> ");
                    } else {
                        out.print("<a href=\"login.html\" target=\"_top\" class=\"h\">亲，请登录</a>\n" +
                                "<a href=\"register.jsp\" target=\"_top\">免费注册</a>");
                    }
                %>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="index.jsp" target="_top" class="h">首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="myyuyue.jsp1" target="_top"><i
                        class="am-icon-user am-icon-fw"></i>个人中心</a></div>
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
                <li class="qc"><a href="jkzsk.html">健康知识库</a></li>
                <li class="qc"><a href="order.jsp">预约挂号</a></li>
                <li class="qc"><a href="myyuyue.jsp">我的预约</a></li>
                <li class="qc last"><a href="liuyan.html">留言板</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="xie">
    <%
        doctor = customer.getDoctor();
        if (customer == null) {
            out.print("没有登录，请先登录");
        } else if (doctor == null) {
            out.print("没有预约，请先预约");
        } else {

            out.println("你已经预约上<br/>");
            out.println(doctor.getDname() + "<br/>");
            out.println(doctor.getDsex() + "<br/>");
            out.println(doctor.getDtel() + "<br/>");
            out.println(doctor.getDtitle() + "<br/>");

        }
    %>
</div>
</body>
</body>
</html>
