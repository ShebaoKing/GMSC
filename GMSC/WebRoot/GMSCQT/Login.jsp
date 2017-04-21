<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../css/Login.css"/>
<title>贵美商城</title>
<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
<script type="text/javascript" src="../Js/Login.js"></script>
</head>

<body>
	<iframe class="iframe_head" scrolling="no" src="HomePageHead.jsp"></iframe>
    <div class="body">
    	<div class="body_left">
        	<form action="user?action=login" method="post" id="form1">
            	<div class="body_left1">
                	<img src="../images/logintitle.gif" style="margin:48px auto auto 25px"/>
                </div>
            	<div class="body_left2">
                	<table class="left_t1">
                    	<tr style="height:40px;">
                        	<td align="right">会员名：</td>
                            <td><input type="text" name="name" id="name1"/></td>
                            <td align="left" id="namet1">（可包含0-9，a-z和下划线）</td>
                        </tr>
                        <tr style="height:36px;">
                        	<td align="right">密&nbsp;&nbsp;码：</td>
                            <td><input type="password" name="password" id="password1"/></td>
                            <td align="left" id="passwordt1">（至少包含6个字符）</td>
                        </tr>
                        <tr>
                        	<td></td>
                        	<td align="center"><input type="image" type="submit" src="../images/login.gif" id="submit1"/></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            	<div class="body_left3">
                	<table class="left_t2">
                    	<tr>
                        	<td>&delta;<a href="#1">什么是安全登录</a></td>
                        </tr>
                        <tr>
                        	<td>&delta;香港會員（繁體中文用戶）由此<a href="#2">登入</a></td>
                        </tr>
                        <tr>
                        	<td>&delta;<a href="#3">密码安全贴士</a></td>
                        </tr>
                        <tr>
                        	<td>&delta;防止病毒或木马窃取您的账户信息，<a href="#4">在线检查</a>您的电脑是否安全</td>
                        </tr>
                    </table>
                </div>
            </form>
   	  </div>
        <div class="body_right">
       	  	<div class="body_right1">
           	  <img src="../images/register.gif" style="margin:48px auto auto 25px"/>
            </div>
            <div class="body_right2">
       	  <table class="right_t1">
                	<tr>
                    	<td rowspan="4">
                        	<dl>
                            	<dt><img src="../images/register1.GIF"/></dt>
                                <dt><img src="../images/register2.GIF"/></dt>
                                <dt><img src="../images/register3.GIF"/></dt>
                                <dt><img src="../images/register4.GIF"/></dt>
                            </dl>
                        </td>
                        <td><span>便宜有好货！</span>超过7000万件商品任您选。</td>
                    </tr>
                    <tr>
                    	<td><span>买卖更安全！</span>交易超安全。</td>
                    </tr>
                    <tr>
                    	<td><span>免费开网店！</span>轻松赚钱交友。</td>
                    </tr>
                    <tr>
                    	<td><span>超人气社区！</span>精彩活动每一天。</td>
                    </tr>
                    <tr>
                    	<td colspan="2" align="center"><input type="image" onclick="registerNow()" src="../images/registernow.gif"/></td>
                </tr>
                </table>
            </div>
            <div class="body_right3">
            	<div class="body_right3_1">
                	<div class="right_3_2">
                    	<p style="margin-left:10px"><img src="../images/register5.GIF"/>您已经是会员？<a href="#">由此登入</a></p>
                    </div>
                    <div class="right_3_3">
                    	<p style="margin-left:10px"><img src="../images/register6.GIF"/>繁体中文用户由此<a href="#1">注册</a></p>
                    </div>
                </div>
            </div>
      </div>
    </div>
    <iframe src="HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
</body>
</html>
