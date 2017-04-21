<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/RegisterSuccess.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
<script type="text/javascript" src="../Js/Register.js"></script>
<script language="javascript" type="text/javascript">
var i = 4;
var time;
time = setInterval("fun()", 1000);
function fun() {
	$("#timeRe").html(i);
	if (i == 0) {
	window.location.href = "Login.jsp";
	clearInterval(time);
	}
	i--;
}
</script>
<title>贵美商城</title>
</head>

<body>
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
    <div class="body1">
    	<p><img src="../images/logo.jpg"/></p>
    </div>
    <div class="body2">
    	<p>祝贺！！</p>
        <p>您已通过我们的注册！！</p>
        <p>欢迎来到拍卖天堂。</p>
        <p><span id="timeRe" style="color:red;font-size:20px;font-weight:bold;">5</span>&nbsp;s后跳转到登录界面！</p>
    </div>
    <iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
</body>
</html>
