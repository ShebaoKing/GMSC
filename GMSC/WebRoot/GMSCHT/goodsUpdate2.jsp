<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript" src="../Js/goodUpdate.js"></script>
 </head>
  
  <body onload="check('${good.class_id}','${good.cate_id }')">
    <div id="header">
    	<p><img src="../images/arrows2.gif">商品管理</p>
    </div>

    <hr/>

    <div id="content">
    <form action="../webpage/good?action=storeUpdate2" method="post" enctype="multipart/form-data">
       <table align="center">
       		<tr>
           	<td align="right" width="100px">商品编号：</td>
            <td width="450px">
            	<input type="hidden" name="good_page" value="${page}" readonly="readonly">
            	<input type="hidden" name="describe" value="${good.describe }" readonly="readonly">
            	<input type="hidden" name="good_type" value="${good.good_type }" readonly="readonly">
            	<input type="hidden" name="store_id" value="${good.store_id }" readonly="readonly">
            	<input type="text" name="good_id" value="${good.good_id }" readonly="readonly"/>
            	</td>
			<td></td>            
           </tr>
       		<tr>
           	<td align="right">商品名称：</td>
            <td colspan="2"><input size="80px" type="text" name="good_name" id="name1" value="${good.good_name }"/></td>
           	<td id="namet1">中文字符开头</td>
           </tr>
           <tr>
           		<td align="right">分类：</td>
           		<td>
           			<select id="class1" onchange="check3(this.value)">
           			</select>
           			<select name="cate_id" id="class2" >
           			</select>
           		</td>
           </tr>
           <tr>
           	   <td></td>
           	   <td align="left">图片1：<img width="80px" height="80px" alt="无图片" src="good?action=download&good_pic=${good.pic1 }">
           	   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图片2：<img width="80px" height="80px" alt="无图片" src="good?action=download&good_pic=${good.pic2 }">
               </td>
           </tr>
           <tr>
           	   <td></td>
           	   <td align="left"><input type="file" name="good_pic1"/>
               <input type="file" name="good_pic2"/></td>
           </tr>
           <tr>
           		<td></td>
           	   <td align="left">图片3：<img width="80px" height="80px" alt="无图片" src="good?action=download&good_pic=${good.pic3 }">
            	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图片4：<img width="80px" height="80px" alt="无图片" src="good?action=download&good_pic=${good.pic4 }">
              </td>
           </tr>
           <tr>
           	   <td></td>
           	   <td align="left"><input type="file" name="good_pic3"/>
               <input type="file" name="good_pic4"/></td>
           </tr>
           <tr>
           	<td align="right">商品库存：</td>
            <td><input type="text" name="good_count" id="count1" value="${good.good_count}"/></td>
           	<td id="countt1"></td>
           </tr>
           <tr>
           	<td align="right">商品价格：</td>
            <td><input type="text" name="good_sale" id="sale1" value="${good.good_sale}"/></td>
          	<td id="salet1"></td>
           </tr>
           <tr>
           	<td align="right">商品折扣：</td>
            <td><input type="text" name="sale_dz" id="dz1" value="${good.sale_dz}"/></td>
          	<td id="dzt1"></td>
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
