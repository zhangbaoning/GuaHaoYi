<%@ page import="entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/4/9
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <link href="../css2/mycss.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--
TODO 添加年龄
-->
<%! Customer customer = null;%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
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
                <li class="qc"><a href="jkzsk.html">健康知识库</a></li>
                <li class="qc"><a href="order.jsp">预约挂号</a></li>
                <li class="qc"><a href="myyuyue.jsp">我的预约</a></li>
                <li class="qc last"><a href="liuyan.html">留言板</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="xie">

    <form>
        <table>
            <tr>
                <td>姓名</td>
                <td><%=customer.getCname()%>
                </td>
            </tr>
            <tr>
                <td>身份证号</td>
                <td><%=customer.getCcard()%>
                </td>
            </tr>
            <tr>
                <td>性别</td>
                <td><%=customer.getCsex()%>
                </td>
            </tr>
            <tr>
                <td>出生日期</td>
                <td><%=customer.getCbirth()%>
                </td>
            </tr>
            <tr>
                <td>手机号码</td>
                <td><input type="text" value=<%=customer.getCtel()%> name="cpassword"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="cpassword" value="*****"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="更新信息"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
