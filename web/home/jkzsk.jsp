<%@ page import="entity.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约挂号</title>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../basic/css/lr2.css" rel="stylesheet" type="text/css"/>
    <link href="../basic/css/fy.css" rel="stylesheet" type="text/css"/>


    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <link href="../css2/mycss.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <%
                    Customer customer = (Customer) session.getAttribute("loginUser");
                    if (customer != null) {
                        out.print("<span class='dl'>欢迎" + customer.getCname() + "</span><a class='zc' href=lout>退出</a> ");
                    } else {
                        out.print("<a class='dl' href=\"login.html\" target=\"_top\" class=\"h\">亲，请登录</a>\n" +
                                "<a class='zc' href=\"register.jsp\" target=\"_top\">免费注册</a>");
                    }
                %>
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

    </div>
    <div class="left">
        <div class="inner">
            <img src="../pic/fruit.jpg">
            <h1>健康的饮食习惯</h1>
        </div>
        <div class="inner">
            <img src="../pic/doctor.jpg">
            <h1>专业的医师资源</h1>
        </div>
        <div class="qq">
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes">
                <img src="../pic/qqs.png">
            </a>
        </div>
    </div>
    <div class="jright">

        <h1 align="center"><b>夏天喝牛奶上火吗</b></h1>
        <p>
            1、夏天喝牛奶上火吗 <br>

            夏天饮牛奶,不但不会“上火”,还能解热毒。炎炎夏日,人们极易出汗,牛奶中含有78%左右的水分,牛奶中的蛋白质和脂肪极易被人体消化吸收。因此,夏饮牛奶不仅可以补充肌体损失的水分,还可增加营养成分,这对保持身体健康极为有益。夏天喝牛奶上火吗?<br>

            2、喝牛奶有何好处<br>

            2.1、营养含量高<br>

            牛奶之内含有的矿物质种类是比较多的,除了我们大家都熟悉的钙物质之外,还具有了比较丰富的铁、锌、铜、磷、锰、钼等等物质的含量其实也是很多的。最重要的是,牛奶属于人们身体上的钙物质最佳来源。并且牛奶之内含有了大量的磷脂、蛋白质、脂肪、乳糖、无机盐等。<br>

            2.2、镇静作用<br>

            牛奶中含有一种能使人产生疲倦欲睡的生化物L色氨酸,还有微量吗啡类物质,这些物质都有一定的镇静催眠作用,它能使大脑思维活动暂时受到抑制,从而使人想睡眠,并且无任何副作用,而且牛奶粘在胃壁上吸收也好,牛奶中的钙还能清除紧张情绪,所以它对老年人的睡眠更有益,故晚上喝牛奶好,有利于人们的休息和睡眠。<br>

            3、那些人不适宜喝牛奶<br>

            3.1、胃虚弱者<br>

            也就是消化功能偏差,容易腹泻或正在腹泻的病人。<br>

            3.2、痰湿较盛者<br>

            比如患有支气管扩张或慢性支气管炎正在急性发作的病人,或者没有食欲、胃腹胀满的病人。
            <br>
            3.3、有饮食积滞的病人

            比如最近贪食煎炸油腻或生冷食物,或者饮酒过量的病人。<br>

            3.4、营养过剩的人<br>

            比如过度肥胖的人。<br>


            喝牛奶有什么误区<br>

            1、牛奶越浓越好<br>

            有人认为,牛奶越浓,身体得到的营养就越多,这是不科学的。所谓过浓牛奶,是指在牛奶中多加奶粉少加水,使牛奶的浓度超出正常的比例标准。也有人惟恐新鲜牛奶太淡,便在其中加奶粉。而如果是婴幼儿常吃过浓牛奶,会引起腹泻、便秘、食欲不振,甚至拒食,还会引起急性出血性小肠炎。夏天喝牛奶上火吗<br>

            2、牛奶和巧克力<br>

            有人以为,既然牛奶属高蛋白食品,巧克力又是能源食品,二者同时吃一定大有益处。事实并非如此。液体的牛奶加上巧克力会使牛奶中的钙与巧克力中的草酸产生化学反应,生成“草酸钙”。于是,本来具有营养价值的钙,变成了对人体有害的物质,从而导致缺钙、腹泻、少年儿童发育推迟、毛发干枯、易骨折以及增加尿路结石的发病率等。<br>

            3、牛奶、橘汁或柠檬汁<br>

            有些人建议在牛奶中加点橘汁或柠檬汁,这看上去是个好办法,但实际上,橘汁和柠檬均属于高果酸果品,而果酸遇到牛奶中的蛋白质,就会使蛋白质变性,从而降低蛋白质的营养价值。夏天喝牛奶上火吗


        </p>
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