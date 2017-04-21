<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
	
	$(function(){
		$("#password1").blur(function(){checkPassword1();});
		$("#password2").blur(function(){checkPassword2();});
		$("form:first").submit(function(){return sub();});
	});
	//提交数据
	function sub(){
		b1=checkPassword1();
		b2=checkPassword2();
		if(b1&&b2){
			return true;
		}
		alert("修改失败！");
		return false;
	}
	
	//检验密码
	function checkPassword1(){
		var reg=/^\S+$/g;
		var pwd=$("#password1").val();
		if(pwd==""){
			$("#passwordt1").html("密码不能为空！").css({color:"red"});
			return false;
		}
		if(pwd.length<6){
			$("#passwordt1").html("必须包含6个字符！").css({color:"red"});
			return false;
		}
		if(!reg.test(pwd)){
			$("#passwordt1").html("密码字符非法！").css({color:"red"});
			return false;
		}
		$("#passwordt1").html("✔").css({color:"green"});
		return true;
		
	}
	//检验重复输入密码
	function checkPassword2(){
		var pwd1=$("#password1").val();
		var pwd2=$("#password2").val();
		if(pwd1!=pwd2){
			$("#passwordt2").html("密码不符！").css({color:"red"});
			return false;
		}
		$("#passwordt2").html("✔").css({color:"green"});
		return true;
		
	}
	
	</script>

  </head>
  
  <body>
    <div style="width:772px;height:20px;">
    	<p><img src="../images/arrows2.gif">修改密码</p>
    </div>
    <hr/>
    <div style="width:772px;height:200px;">
    <form action="../webpage/user?action=update4" method="post" target="_top">
    	<table height="200px">
    		<tr>
    			<td>
    				<input type="hidden" name="user_id" value="${user.user_id}" readonly="readonly">
    			</td>
    		</tr>
    		<tr>
            	<td align="right" width="200px">登录名：</td>
                <td width="150px"><input type="text" name="user_login" id="user1" value="${user.user_login }" readonly="readonly"/></td>
                <td id="usert1"></td>
                <td></td>
            </tr>
			<tr>
           	<td align="right">密码：</td>
               <td><input type="password" name="user_pwd" id="password1"/></td>
               <td align="left" id="passwordt1">(至少包含6个字符)</td>
               <td></td>
           </tr>
           <tr>
           	<td align="right">再次输入密码：</td>
               <td><input type="password" id="password2"/></td>
               <td id="passwordt2"></td>
               <td></td>
           </tr>
            <tr>
            	<td align="center" colspan="2">
                	<input type="image" type="submit" src="../images/update.PNG"/>
                </td>
            </tr>
    	</table>
    </form>
    </div>
  </body>
</html>
