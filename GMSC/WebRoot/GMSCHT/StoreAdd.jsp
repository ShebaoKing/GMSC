<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>申请开店</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="../css/i_frame.css">
  	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
  	<script type="text/javascript" src="../Js/StoreAdd.js"></script>
  </head>
  
  <body>
    <div id="header">
        <p><img src="../images/arrows2.gif">申请开店</p>
    </div>
    <hr/>
    <div id="content">
    <form action="../webpage/store?action=add" method="post" enctype="multipart/form-data" target="_top">
       <table>
       	<tr>
           	<td align="right" width="100px">店铺名称：</td>
               <td width="150px">
       				<input type="hidden" name="store_user_id" value="${user.user_id}">
               		<input type="text" size="30px" name="store_name" id="name1"/>
               	</td>
               <td id="namet1">不少于3个汉字字符</td>
               <td></td>
           </tr>
           <tr>
           	<td align="right">店铺图片：</td>
               <td><input type="file" name="store_photo" id="photo1"/></td>
               <td align="left" id="photot1"></td>
               <td></td>
           </tr>
           <tr>
           	<td align="right">身份证：</td>
               <td><input type="text" size="30px" name="store_card" id="card1"/></td>
               <td align="left" id="cardt1"></td>
               <td></td>
           </tr>
           <tr>
           <td></td>
           	<td colspan="2">
               	<input type="image" type="submit" src="../images/update.PNG"/>
               </td>
           </tr>
       </table>
    </form>
    </div>
  </body>
</html>
