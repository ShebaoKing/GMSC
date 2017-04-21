<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript" src="../Js/common.js"></script>

  </head>
  
  <body onload="time()">
  	<!-- 头部 -->
    <nav>
    	<div id="logo"><img src="../images/logo.jpg" title="贵美商城" /></div>
    	<div id="nav">
    		<ul>
    			<li id="first">首页</li>
    			<li>用户</li>
    			<li>店铺管理</li>
    			<li>商品分类</li>
    			<li>订单</li>
    			<li>商品详细</li>
    			<li>公告</li>
    		</ul>
    	</div>
    	<div id="welcome">
    		<p>${admin.admin_name} 您好，现在是<span id="mydate"></span>，欢迎回到管理后台。</p>
    	</div>
    	<div id="location">
    		<p>您现在的位置：<a href="">贵美商城</a> &gt; 管理后台</p>
    	</div>
    </nav>

    <!-- 内容样式 -->
    <div id="content">
    	<div id="left">
    		<dl>
    			<p>用户管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/user?action=check">用户管理</a><span>
    			</dt>
    		</dl>
    		<dl>
    			<p>店铺管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/store?action=check">店铺管理</a><span>
    			</dt>
    		</dl>

    		<dl>
    			<p>商品分类管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/goodsclass?action=check">大分类管理</a><span><a target="myiframe" href="classAdd.jsp">新增</a></span>
    			</dt>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/category?action=check">小分类管理</a><span><a target="myiframe" href="categoryAdd.jsp">新增</a></span>
    			</dt>
    		</dl>

    		<dl>
    			<p>订单管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/order?action=check">订单管理</a>
    			</dt>
    		</dl>

    		<dl>
    			<p>商品详细管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/good?action=check">商品详细管理</a>
    			</dt>
    		</dl>

    		<dl>
    			<p>公告管理</p>
    			<dt>
    				<img src="../images/arrows.gif"><a target="myiframe" href="../webpage/announcement?action=check">公告管理</a><span><a target="myiframe" href="announcementAdd.jsp">新增</a></span>
    			</dt>
    		</dl>
    	</div>

    	<div id="right">
    		<iframe name="myiframe" scrolling="no" src="welcome.jsp"></iframe>
    	</div>
    </div>

  </body>
</html>
