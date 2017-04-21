<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>订单管理</title>
    
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
    	<p><img src="../images/arrows2.gif">订单管理</p>
    </div>

    <hr/>

    <div id="content">
    <form action="../webpage/order?action=storeUpdate2" method="post">
       <table align="center">
       		<tr>
           	<td align="right" width="100px">订单编号：</td>
            <td width="450px">
            	<input type="hidden" name="page" value="${page}">
            	<input type="hidden" name="store_id" value="${order.store.store_id}">
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
            		<option value="1" <c:if test="${order.order_status==1}">selected="selected"</c:if>>待审核</option>
            		<option value="2" <c:if test="${order.order_status==2}">selected="selected"</c:if>>未发货</option>
            		<option value="3" <c:if test="${order.order_status==3}">selected="selected"</c:if>>已发货</option>
            	</select>
            </td>
           </tr>
           <tr>
          	   <td></td>
          	 	<td>
             	  	<input type="image" type="submit" src="../images/update.PNG"/>
                </td>
           </tr>
       </table>
    </form>
    </div>
  </body>
</html>
