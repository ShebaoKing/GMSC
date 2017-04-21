<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript" src="../Js/centerUserInf.js"></script>

  </head>
  
  <body>
    <div style="width:772px;height:20px;">
    	<p><img src="../images/arrows2.gif">个人信息</p>
    </div>
    <hr/>
    <div style="width:772px;height:200px;">
    <form action="../webpage/user?action=update3" method="post" enctype="multipart/form-data">
    	<table height="400px">
    		<tr>
    			<td>
    				<input type="hidden" name="user_id" id="id1" value="${user.user_id}" readonly="readonly">
    				<input type="hidden" name="user_login" value="${user.user_login}" readonly="readonly">
    				<input type="hidden" name="user_type" value="${user.user_type}" readonly="readonly">
    				<input type="hidden" name="user_pwd" value="${user.user_pwd}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
            	<td align="right" width="100px">昵称：</td>
                <td width="150px"><input type="text" name="user_name" id="name1" value="${user.user_name }" readonly="readonly"/></td>
                <td id="namet1"></td>
                <td></td>
            </tr>
            <tr>
            	<td align="right">手机号码：</td>
                <td><input type="text" name="user_phone" id="phone1" value="${user.user_phone }"/></td>
                <td align="left" id="phonet1"></td>
                <td></td>
            </tr>
            <tr>
            	<td align="right">电子邮箱：</td>
                <td><input type="text" name="user_email" id="email1" value="${user.user_email }"/></td>
                <td align="left" id="emailt1">(必须包含&#64;字符)</td>
                <td></td>
            </tr>
            <tr>
            	<td align="right">性别：</td>
                <td colspan="2">
                	<input type="radio" name="user_sex" <c:if test="${user_sex==男 }">checked="checked"</c:if> value="男"/><img src="../images/Male.gif"/>男
                	<input type="radio" name="user_sex" <c:if test="${user_sex==女 }">checked="checked"</c:if> value="女"/><img src="../images/Female.gif"/>女
                </td>
                <td></td>
            </tr>
            <tr>
            	<td align="right">头像：</td>
            	<td>
            		<img width="80px" height="80px" src="../webpage/user?action=download&user_photo=${user.user_photo }">
            	</td>
                <td>
                	<input type="file" name="user_photo" id="portrait1"/>
                </td>
                <td id="photot1"></td>
                <td></td>
            </tr>
            <tr>
            	<td align="right">爱好：</td>
               <td colspan="2">
               	<input type="checkbox" name="user_hobby" id="user_hobby1" <c:if test="${fn:contains(user.user_hobby,'运动')}">checked="checked"</c:if> value="运动"/>运动
             	<input type="checkbox" name="user_hobby" id="user_hobby2" <c:if test="${fn:contains(user.user_hobby,'聊天')}">checked="checked"</c:if> value="聊天"/>聊天
            	<input type="checkbox" name="user_hobby" id="user_hobby3" <c:if test="${fn:contains(user.user_hobby,'玩游戏')}">checked="checked"</c:if> value="玩游戏"/>玩游戏
               </td>
            	<td id="hobbyt1"></td>
            	<td></td>
            </tr>
            <tr>
            	<td align="right">出生日期：</td>
               <td colspan="2" id="birthday">
               	<select name="user_birthday1" id="birthday1">
                       <option value='${user.user_birthday1 }' selected='selected'>${user.user_birthday1 }</option>
                       <option>1990</option>
                       <option>1991</option>
                       <option>1992</option>
                       <option>1993</option>
                       <option>1994</option>
                   </select>年
                   <select name="user_birthday2" id="birthday2">
                       <option value='${user.user_birthday2 }' selected='selected'>${user.user_birthday2 }</option>
                   	   <option>01</option>
                       <option>02</option>
                       <option>03</option>
                       <option>11</option>
                       <option>12</option>
                   </select>月
                   <select name="user_birthday3" id="birthday3">
                       <option value='${user.user_birthday3 }' selected='selected'>${user.user_birthday3 }</option>
                   	   <option>01</option>
                       <option>02</option>
                       <option>03</option>
                       <option>04</option>
                       <option>05</option>
                   </select>日
               </td>
               <td id="birthdayt1"></td>
            </tr>
            <tr>
            	<td align="center" colspan="2">
                	<input type="image" id="submit1" type="submit" src="../images/update.PNG"/>
                </td>
            </tr>
    	</table>
    </form>
    </div>
  </body>
</html>
