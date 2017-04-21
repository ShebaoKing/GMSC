<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>店铺管理</title>
    
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
    	<p><img src="../images/arrows2.gif">店铺管理</p>
    </div>

    <hr/>

    <div id="content">
    <form action="../webpage/store?action=update2" method="post">
       <table align="center">
       		<tr>
           	<td align="right" width="100px">店铺编号：</td>
            <td width="450px"><input type="hidden" name="page" value="${page}"><input type="text" name="store_id" value="${store.store_id }" readonly="readonly"/></td>
			<td></td>            
           </tr>
       		<tr>
           	<td align="right">店铺名：</td>
            <td><input type="text" name="store_name" value="${store.store_name}" readonly="readonly"/></td>
			<td></td>            
           </tr>
           <tr>
           		<td align="right">店主：</td>
           		<td><input type="text" name="store_user_name" value="${store.store_user_name}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           		<td align="right">店主联系方式：</td>
           		<td><input type="text" name="store_user_phone" value="${store.store_user_phone}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           		<td align="right">店铺图片：</td>
           		<td><img width="300px" height="200px" src="../webpage/store?action=download&store_photo=${store.store_photo }" id="img1"></td>
				<td></td>
           </tr>
           <tr>
           		<td align="right">店主身份证：</td>
           		<td><input type="text" name="store_card" value="${store.store_card}" readonly="readonly"/></td>
				<td></td>
           </tr>
           <tr>
           	<td align="right">审核状态：</td>
            <td>
            	<select name="store_type">
            		<option value="1" <c:if test="${store.store_type==1}">selected="selected"</c:if>>审核通过</option>
            		<option value="2" <c:if test="${store.store_type==2}">selected="selected"</c:if>>待审核</option>
            		<option value="3" <c:if test="${store.store_type==3}">selected="selected"</c:if>>审核未通过</option>
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
