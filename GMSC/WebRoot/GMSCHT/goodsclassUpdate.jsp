<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>大分类管理</title>
    
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
        <p><img src="../images/arrows2.gif">大分类管理</p>
    </div>
    <hr/>
    <div id="content">
    <form action="../webpage/goodsclass?action=update2&page=${page}" method="post">
       <table align="center">
           <tr>
           	<td align="right">编号：</td>
               <td><input type="text" name="class_id1" id="id1" value="${goodsclass.class_id }" readonly="readonly"/></td>
               <td id="idt1"></td>
               <td></td>
           </tr>
       		<tr>
           	<td align="right">分类名：</td>
               <td width="150px"><input type="text" name="class_name1" id="name1" value="${goodsclass.class_name }"/></td>
               <td id="namet1"></td>
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
