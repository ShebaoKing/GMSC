<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>公告管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
 </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">公告管理</p>
    </div>

    <hr/>

    <div id="content">
    <form action="../webpage/announcement?action=add" method="post" enctype="multipart/form-data">
       <table align="center">
       		<tr>
           	<td align="right">公告标题：</td>
            <td colspan="2" width="150px"><input size="60px" type="text" name="an_title"/></td>
           </tr>
           <tr>
           		<td align="right">公告内容：</td>
           		<td colspan="2">
           			<textarea rows="10px" cols="44px" name="an_text"></textarea>
           		</td>
           </tr>
           <tr>
           	   <td align="right">图片：</td>
           	   <td><input type="file" name="an_image"/></td>
           </tr>
           <tr>
           		<td align="right">公告状态：</td>
           		<td>
           			<select name="an_status">
           				<option value="0">不公布</option>
           				<option value="1">公布</option>
           			</select>
           		</td>
           		<td></td>
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
