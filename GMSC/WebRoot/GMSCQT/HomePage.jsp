<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/GuimeiHomePage.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
<script type="text/javascript" src="../Js/HomePage.js"></script>
<title>贵美商城</title>
</head>

<body onload="goods()">
	<iframe class="iframe_head" scrolling="no" src="HomePageHead.jsp"></iframe>
    <div class="body">
    	<div class="body_left">
			<div class="left_t1" id="left_t1"></div>
			<div class="left_t2" id="left_t2"></div>
			<div class="left_t2" id="left_t3"></div>
            <div class="left_t2" id="left_t4"></div>
        </div>
    	<div class="body_center">
        	<div class="body_center_1"><img src="../images/ad-01.jpg"/></div>
            <div class="body_center_2">
            	<div class="body_center_d1" id="center_t1"></div>
            </div>
        </div>
		<div class="body_right">
        	<div class="body_right1">
        		<div class="body_right_d1" id="right_t1"></div>
        		<div class="body_right_d2" id="right_t2"></div>
           </div>
            	<div class="body_right2">
            	<div class="body_right_d4" id="right_t3"></div>
          </div>
            <div class="body_right3"></div>
        </div>
    </div>
    <iframe src="HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
    <img src="../images/list1.jpg" class="ad_left"/><img src="../images/list2.jpg" class="ad_right"/>
</body>
</html>
