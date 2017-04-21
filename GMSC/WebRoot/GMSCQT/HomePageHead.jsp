<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../css/GuimeiHomePage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Js/HomePageHead.js"></script>
</head>
<body onload="time()">
	<div class="center_head">
    	<div class="center_head1">
        	<table id="t1">
            	<tr>
                	<td align="center" valign="middle"><input type="image" src="../images/gouwuche.GIF"/></td>
                  <td align="center" valign="middle"><a href="../webpage2/buy.jsp" id="head1font" target="_top">购物车</a></td>
                    <td align="center" valign="middle"><input type="image" src="../images/bangzhuzhongxin.gif"/></td>
                    <td align="center" valign="middle"><a href="Help.jsp" id="head1font" target="_top">帮助中心</a></td>
                    <td align="center" valign="middle"><input type="image" src="../images/jiarushoucang.gif"/></td>
                  <td align="center" valign="middle" ><a href="javascript:window.external.addFavorite('127.0.0.1:8080/GuiMeiStore/webpage/HomePage.jsp')" id="head1font">加入收藏</a></td>
                  <td align="center" valign="middle"><input type="image" src="../images/sheweishouye.gif"/></td>
                  <td align="center" valign="middle"><a href="#4"  id="head1font">设为首页</a></td>
                  <c:if test="${user!=null}" var="b">
                  <td align="center" valign="middle"><span style="font-size:13px"><a href="../webpage2/userCenter.jsp" target="_top">${user.user_name }</a></span></td>
                  <td align="center" valign="middle"><a href="user?action=logout" target="_top"><input type="button" value="注销"/></a></td>
                  </c:if>
                  <c:if test="${!b }">
                  <td align="center" valign="middle"><a href="Login.jsp" target="_top"><input type="button" value="登录"/></a></td>
                  <td align="center" valign="middle"><a href="Register.jsp" target="_top"><input type="button" value="注册"/></a></td>
                  </c:if>
                </tr>
            </table>
        </div>
        <p id="center_head_font">您好！欢迎访问贵美商城。<span id="time">时间</span></p>
        <table class="t2">
            	<tr>
                	<td id="t2_td"><a href="HomePage.jsp" id="t2_td_font" target="_top">首&nbsp;&nbsp;页</a></td>
                    <td id="t2_td"><a href="#6" id="t2_td_font">家用电器</a></td>
                    <td id="t2_td"><a href="#7" id="t2_td_font">手机数码</a></td>
                    <td id="t2_td"><a href="#8" id="t2_td_font">日用百货</a></td>
                    <td id="t2_td"><a href="#9" id="t2_td_font">书&nbsp;&nbsp;籍</a></td>
                    <td id="t2_td"><a href="Help.jsp" id="t2_td_font" target="_top">帮助中心</a></td>
                    <td id="t2_td"><a href="store?action=checkAll" id="t2_td_font" target="_top">店铺一览</a></td>
                    <td id="t2_td"><a href="#12" id="t2_td_font">全球咨询</a></td>
                </tr>
        </table>
        <form action="good?action=searchInf" method="post" target="_parent">
	        <input type="text" name="search" id="search_text"/>
	        <input type="submit" id="search_button" value=""/>
        </form>
    </div>
</body>
</html>
