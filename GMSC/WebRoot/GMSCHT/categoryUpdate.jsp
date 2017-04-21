<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>小分类管理</title>
    
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
        <p><img src="../images/arrows2.gif">小分类管理</p>
    </div>
    <hr/>
    <div id="content">
    <form action="../webpage/category?action=update2&page=${page}" method="post">
       <table align="center">
           <tr>
           	<td align="right" width="100px">编号：</td>
            <td width="300px"><input type="text" name="cate_id1" id="id1" value="${category.cate_id }" readonly="readonly"/></td>
           </tr>
       		<tr>
           	<td align="right">小分类名：</td>
               <td width="150px"><input type="text" name="cate_name1" id="name1" value="${category.cate_name }"/></td>
           </tr>
           <tr>
           		<td align="right">所属大分类：</td>
           		<td>
	           		<select name="class_id1">
	           			<c:forEach items="${goodslist }" var="g">
	           				<option value="${g.class_id }" <c:if test="${g.class_id==category.class_id }">selected="selected"</c:if>>${g.class_name }</option>
	           			</c:forEach>
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
