<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>订单查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
 </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">订单查看</p>
    </div>

    <hr/>

    <div id="content">
       <table align="center">
       		<tr>
           	<td align="right" width="100px">订单编号：</td>
            <td width="450px">
            	<input type="text" name="order_id" value="${order.order_id }" readonly="readonly"/>
            	</td>
			<td></td>
           </tr>
           <tr>
           		<td align="right">下单人姓名：</td>
           		<td><input type="text" name="order_user_name" value="${order.order_user_name}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           		<td align="right">收件人姓名：</td>
           		<td><input type="text" name="order_user_name" value="${order.order_name}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           		<td align="right">收件人电话：</td>
           		<td><input type="text" name="order_user_name" value="${order.order_phone}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           	<td align="right">收件人地址：</td>
            <td><input type="text" name="order_address" value="${order.order_address}" readonly="readonly"/></td>
           </tr>
           <tr>
           	<td align="right">商品名称：</td>
            <td><input type="text" name="order_no" value="${order.order_goods_name}" readonly="readonly"/></td>
           </tr>
           <tr>
           	<td align="right">商品数量：</td>
            <td><input type="text" name="order_no" value="${order.order_no}" readonly="readonly"/></td>
           </tr>
           <tr>
           	<td align="right">下单日期：</td>
            <td><input type="text" name="order_date" value="${order.order_date}" readonly="readonly"/></td>
           </tr>
           <tr>
           	<td align="right">订单状态：</td>
            <td>
            	<select name="order_status">
            		<option selected="selected">
	            		<c:choose>
	            			<c:when test="${order.order_status==1}">待审核</c:when>
	            			<c:when test="${order.order_status==2}">未发货</c:when>
	            			<c:when test="${order.order_status==3}">已发货</c:when>
	            			<c:when test="${order.order_status==4}">已收货</c:when>
	            			<c:when test="${order.order_status==5}">交易完成</c:when>
	            		</c:choose>
            		</option>
            	</select>
            </td>
           </tr>
       </table>
    </div>
  </body>
</html>
