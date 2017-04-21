<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>贵美商城-商品购买页</title>
 	<link rel="stylesheet"	type="text/css"	href="../css/buy.css"	/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript" src="../Js/buy.js"></script>
</head>

<body onload="showall(${user.user_id})">
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
	<div class="body1">
	<center>
	  	<table class="body_t1" id="t1">
	  	  <tr height="30px"><td><img src="../images/mycart.gif" alt="alt" /></td></tr>
		  <tr class="buytitle" height="40px"><td colspan="6" class="b">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认商品价格与交易条件</td></tr>
	      <tr align="left" style="font-weight: bolder;">
	        <td width="200px">商品名</td>
	        <td width="80px">原价</td>
	        <td width="80px">优惠价</td>
	        <td width="80px">打折</td>
	        <td width="100px">数量</td>
	        <td width="50px">删除</td>
	      </tr>
	  	</table>
    <form action="../webpage/order?action=add" method="post">
    	<input type="hidden" name="user_id" value="${user.user_id }">
	    <table class="body_t1">
	      <tr height="40px" class="buytitle">
	        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;补充您的邮件地址和联系人基本信息</td>
	      </tr>
	      <tr>
			<td align="right">收件人：</td>
	        <td><input type="text" name="order_name" id="name1"/><span id="namet1"></span></td>
		 </tr>
	      <tr>
			<td align="right">电&nbsp;&nbsp;&nbsp;话：</td>
	        <td><input type="text" name="order_phone" id="phone1"/><span id="phonet1">（手机号码）</span></td>
	      </tr>
	      <tr>
			<td align="right">地&nbsp;&nbsp;&nbsp;址： </td>
	        <td>
	        	<input type="text" size="80px" name="order_address" id="address1"/>
	        	<span id="addresst1"></span>
	  		</td>
	      </tr>      
	      <tr>
	        <td>&nbsp;</td>
	        <td><input type="image" src="../images/submit.gif" /></td>
	      </tr>
	      <c:forEach items="${mess }" var="m">
	      <tr>
	        <td>&nbsp;</td>
	        <td><span style="color:red;">${m }</span></td>
	      </tr>
	      </c:forEach>
	  </table>
  </form>
  </center>	
	<iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
	</div>
</body>
