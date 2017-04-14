<%@ page import="entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/4/8
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/lr2.css" rel="stylesheet" type="text/css"/>


    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
</head>
<body>

<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <%
                        Customer customer = (Customer) session.getAttribute("loginUser");
                        if (customer != null) {
                            out.print("<span class='dl'>欢迎" + customer.getCname() + "</span><a href=lout class='zc'>退出</a> ");
                        } else {
                            out.print("<a href=\"login.html\" target=\"_top\" class=\"h\" class='dl'>亲，请登录</a>\n" +
                                    "<a href=\"register.jsp\" target=\"_top\" class='zc'>免费注册</a>");
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
                <div class="menu-hd MyShangcheng"><a href="personal_info.jsp" target="_top"><i
                        class="am-icon-user am-icon-fw"></i>个人中心</a>
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
</div>
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

            </ul>

        </div>

        <div class="bannerTwo">
            <!--轮播 -->
            <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
                <ul class="am-slides">
                    <li class="banner1"><a href="introduction.html"><img src="../pic/lun0.png"/></a></li>
                    <li class="banner2"><a><img src="../pic/lun0.png"/></a></li>
                    <li class="banner3"><a><img src="../pic/lun1.png"/></a></li>
                    <li class="banner4"><a><img src="../images00/ad8.jpg"/></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>

        <!--侧边导航 -->
        <div id="nav" class="navfull" style="position: static;">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">

                    <div class="category" style="box-shadow:none ;margin-top: 2px;">
                        <ul class="category-list navTwo" id="js_climit_li">
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="皮肤科">骨科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="内科">骨科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=骨科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=骨科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=骨科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=骨科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=骨科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=骨科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=骨科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=骨科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=骨科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=骨科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="外科">外科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="外科">外科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=外科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=外科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=外科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=外科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=外科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=外科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=外科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=外科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=外科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=外科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="儿科">儿科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="儿科">儿科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=儿科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=儿科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=儿科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=儿科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=儿科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=儿科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=儿科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=儿科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=儿科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=儿科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="五官科">五官科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="五官科">五官科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=五官科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=五官科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=五官科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=五官科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=五官科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=五官科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=五官科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=五官科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=五官科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=五官科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="肿瘤科">肿瘤科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="肿瘤科">肿瘤科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=肿瘤科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=肿瘤科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=肿瘤科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=肿瘤科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=肿瘤科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=肿瘤科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=肿瘤科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科" href="docterlist.action?hname=宝鸡市人民医院&pname=肿瘤科><span>宝鸡市人民医院</span></a></dd>
                                                        <dd><a title=" 内科"
                                                            href="docterlist.action?hname=商洛市人民医院&pname=肿瘤科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=肿瘤科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="皮肤科">传染科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="传染科">传染科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=传染科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=传染科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=传染科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=传染科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=传染科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=传染科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=传染科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=传染科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=传染科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=传染科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="皮肤科">皮肤科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="皮肤科">皮肤科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=皮肤科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=皮肤科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=皮肤科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=皮肤科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=皮肤科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=皮肤科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=皮肤科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=皮肤科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=皮肤科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=皮肤科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="中医科">中医科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="中医科">中医科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=中医科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=中医科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=中医科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=中医科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=中医科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=中医科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=中医科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=中医科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=中医科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=中医科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="营养科">营养科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="营养科">营养科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=营养科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=营养科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=营养科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=营养科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=营养科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=营养科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=营养科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=营养科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=营养科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=营养科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                            <li>
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a class="ml-22" title="精神心理科">精神心理科
                                        </a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="精神心理科">精神心理科</span></dt>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=西安市人民医院&pname=精神心理科"><span>西安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=安康市人民医院&pname=精神心理科"><span>安康市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=铜川市人民医院&pname=精神心理科"><span>铜川市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=咸阳市人民医院&pname=精神心理科"><span>咸阳市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=榆林市人民医院&pname=精神心理科"><span>榆林市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=延安市人民医院&pname=精神心理科"><span>延安市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=渭南市人民医院&pname=精神心理科"><span>渭南市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=宝鸡市人民医院&pname=精神心理科"><span>宝鸡市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=商洛市人民医院&pname=精神心理科"><span>商洛市人民医院</span></a>
                                                        </dd>
                                                        <dd><a title="内科"
                                                               href="docterlist.action?hname=汉中市人民医院&pname=精神心理科"><span>汉中市人民医院</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--导航 -->
        <script type="text/javascript">
            (function () {
                $('.am-slider').flexslider();
            });
            $(document).ready(function () {
                $("li").hover(function () {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function () {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
        </script>


        <div class="clear"></div>
        <!--走马灯 -->

        <div class="marqueenTwo">
            <span class="marqueen-title"><i class="am-icon-volume-up am-icon-fw"></i>公告<em
                    class="am-icon-angle-double-right"></em></span>
            <div class="demo">

                <ul>
                    <li><a target="_blank" href="#"><span>[公告]</span>三维生物打印微环境诱导汗腺再生的研究</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>1型糖尿病与其他内分泌疾病</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>自身免疫性多内分泌腺综合征</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>I型典型病变</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>2016中国十大医学新闻人物</a></li>

                </ul>

            </div>
        </div>
        <div class="clear"></div>
    </div>


    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function () {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }

            $(function () {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>


<!--首页资讯-->
<div class="f9">

    <div class="am-container ">
        <div class="shopTitle ">
            <h4 class="floor-title">医学快讯</h4>
            <div class="floor-subtitle">
                <em class="am-icon-caret-left"></em>
                <h3>身体是革命的本钱</h3></div>

        </div>

    </div>
</div>

<div class="am-g am-g-fixed floodSix ">

    <div class="am-u-sm-5 am-u-md-3 text-one list">
        <div class="word">
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
            <a class="outer" href="#"><span class="inner"><b class="text">咨询</b></span></a>
        </div>
        <a href="# ">
            <img src="../pic/lun1.png"/>
            <div class="outer-con ">
                <div class="title ">
                    宣传科室
                </div>
                <div class="sub-title ">
                    宣传
                </div>
            </div>
        </a>
        <div class="triangle-topright"></div>
    </div>

    <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

        <div class="outer-con ">
            <div class="title ">
                宣传
            </div>
            <div class="sub-title ">
                宣传副标题
            </div>

        </div>
        <a href="# "><img src="../indexpic/1.jpg"/></a>
    </div>


    <div class="am-u-md-2 am-u-lg-2 text-three">
        <div class="boxLi"></div>
        <div class="outer-con ">
            <div class="title ">
                宣传标题
            </div>
            <div class="sub-title ">
                副标题
            </div>

        </div>
        <a href="# "><img src="../indexpic/2.jpeg"/></a>
    </div>

    <div class="am-u-md-2 am-u-lg-2 text-three sug">
        <div class="boxLi"></div>
        <div class="outer-con ">
            <div class="title ">
                标题
            </div>
            <div class="sub-title ">
                标题
            </div>

        </div>
        <a href="# "><img src="../indexpic/3.jpg "/></a>
    </div>

    <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
        <div class="boxLi"></div>
        <div class="outer-con ">
            <div class="title ">
                标题
            </div>
            <div class="sub-title ">
                副标题
            </div>

        </div>
        <a href="# "><img src="../indexpic/4.jpg"/></a>
    </div>

    <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
        <div class="boxLi"></div>
        <div class="outer-con ">
            <div class="title ">
                博鳌提
            </div>
            <div class="sub-title ">
                副标题
            </div>

        </div>
        <a href="# "><img src="../indexpic/5.jpg"/></a>
    </div>

    <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six">
        <div class="boxLi"></div>
        <div class="outer-con ">
            <div class="title ">
                BIAOTI
            </div>
            <div class="sub-title ">
                XXX
            </div>

        </div>
        <a href="# "><img src="../indexpic/6.jpg"/></a>
    </div>

</div>
<div class="clear "></div>

<div class="f10">
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
</div>


<!--引导 -->
<div class="navCir">
    <ul>
        <li class="active"><a href="index.jsp"><i class="am-icon-home "></i>首页</a></li>
        <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
        <li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
        <li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
    </ul>
</div>

<script>
    window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
</script>
<script type="text/javascript " src="../basic/js/quick_links.js "></script>
</body>
</html>
