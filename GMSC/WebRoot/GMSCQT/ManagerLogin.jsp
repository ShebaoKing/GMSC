<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>后台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    
    <style type="text/css">
        #content hr {
            border-color: #ff8040;
            margin-top: 0;
        }

        #header {
            margin-left: 5px;
            position: relative;
            top: 6px;
        }

        #header img {
            margin-right: 5px;
        }

        h1 {
            font-weight: normal;
            letter-spacing: 2px;
            font-family: "宋体";
            margin-top: 60px;
            margin-bottom: 40px;
        }
        
        #foot {
        	text-align: center;
        	letter-spacing: 1px;
        }
    </style>

  </head>
  
  <body onload="time()">

    <!-- 头部 -->
    <nav>
    <div id="logo"><img src="../images/logo.jpg" title="贵美商城" /></div>
    <div id="nav">
        <ul>
            <li id="first">首页</li>
            <li>用户</li>
            <li>商品分类</li>
            <li>订单</li>
            <li>商品详细</li>
            <li>公告</li>
        </ul>
    </div>
    <div id="welcome">
        <p>管理员您好,现在是<span id="mydate"></span>，欢迎回到管理后台。</p>
    </div>
    <div id="location">
        <p>您现在的位置：<a href="">贵美商城</a> &gt; 管理后台</p>
    </div>
    </nav>

	<!-- 内容样式 -->
    <div id="content">

        <div id="header">
        	<p><img src="../images/arrows2.gif">管理首页</p>
        </div>

        <hr />

    	<center>
         <h1>欢迎登录贵美商城系统</h1>  
         <form action="admin?action=login" method="post">
             <table>
                 <tr>
                     <td>用 户 名：</td>
                     <td><input type="text" name="name"/></td>
                 </tr>

                 <tr>
                     <td>密 &nbsp; &nbsp; 码：</td>
                     <td><input type="password" name="pwd" /></td>
                 </tr>
                 <tr>
                     <td style="text-align:center;" colspan="2"><input type="image" src="../images/login2.PNG" /></td>
                 </tr>
             </table>
         </form>
        </center>
    </div>
    
    <!-- 尾部样式 -->
    <div id="foot">
    	<hr/>
    	<p>Copyright&copy;博创华宇 All Rights Reserved.京ICP证1000001号</p>
    </div>
  </body>
</html>
