<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>个人中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/userCenter.css">
  </head>
  
<body onload="time()">
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
	<div class="body1">
    	<div id="welcome">
    		<span style="font-weight:bold;color: maroon;">${user.user_name} 您好,欢迎访问个人中心。</span>
    	</div>
    	<div id="location">
    		<span style="color:green;font-weight: bold;">您现在的位置：<a style="color:orange;font-weight: bold;" href="../webpage/HomePage.jsp">贵美商城</a><a style="color:orange;font-weight: bold;" href="userCenter.jsp"> &gt; 个人中心</a></span>
    	</div>
    	<div class="body_left1">
    		<table class="body_left_t1">
    			<tr>
    				<td>
    					<img src="../images/arrows.gif">
    					<a target="myiframe" href="centerUserInf.jsp">个人信息</a>
    				</td>
    			</tr>
    			<tr>
    				<td>
    					<img src="../images/arrows.gif">
    					<a target="myiframe" href="../webpage/order?action=check3&user_name=${user.user_name}">我的订单</a>
    				</td>
    			</tr>
    			<tr>
    				<td>
    					<img src="../images/arrows.gif">
    					<a target="myiframe" href="centerPwd.jsp">修改密码</a>
    				</td>
    			</tr>
    			<c:if test="${user.user_type==0 }">
    				<tr>
    				<td>
    					<img src="../images/arrows.gif">
    					<a target="myiframe" href="StoreAdd.jsp">申请开店</a>
    				</td>
    				</tr>
    			</c:if>
    			<c:if test="${user.user_type==1 }">
    				<c:if test="${user.store.store_type==1 }">
    					<tr>
	    				<td>
	    					<img src="../images/arrows.gif">
	    					<a target="myiframe" href="../webpage/good?action=storeCheck&store_id=${user.store.store_id }">店铺商品</a><span style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;<a target="myiframe" href="goodsAdd.jsp"><span style="color:red;">新增</span></a></span>
	    				</td>
	    				</tr>
	    				<tr>
	    				<td>
	    					<img src="../images/arrows.gif">
	    					<a target="myiframe" href="../webpage/order?action=storeCheck&store_id=${user.store.store_id }">店铺订单</a>
	    				</td>
	    				</tr>
    				</c:if>
    				<c:if test="${user.store.store_type==2 }">
    					<tr>
	    				<td>
	    					<img src="../images/arrows.gif">
	    					<a target="myiframe">申请开店</a>
	    				</td>
	    				</tr>
    					<tr>
	    				<td>
	    					<span style="font-size: 13px;color: red;">管理员审核中</span>
	    				</td>
	    				</tr>
	    				<tr>
	    				<td>
	    					<span style="font-size: 13px;color: red;">（如有疑问请与管理员联系）</span>
	    				</td>
	    				</tr>
    				</c:if>
    				<c:if test="${user.store.store_type==3 }">
    					<tr>
	    				<td>
	    					<img src="../images/arrows.gif">
	    					<a target="myiframe">申请开店</a>
	    				</td>
	    				</tr>
    					<tr>
	    				<td>
	    					<span style="font-size: 13px;color: red;">管理员审核未通过</span>
	    				</td>
	    				</tr>
	    				<tr>
	    				<td>
	    					<span style="font-size: 13px;color: red;">（请与管理员联系）</span>
	    				</td>
	    				</tr>
    				</c:if>
    			</c:if>
    		</table>
    	</div>
    	<div class="body_left2">
    		<iframe name="myiframe" scrolling="no" class="iframe_center" src="centerWelcome.jsp"></iframe>
    	</div>

    <iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
    </div>
  </body>
</html>
