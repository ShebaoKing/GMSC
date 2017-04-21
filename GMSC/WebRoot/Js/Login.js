$(function(){
	$("#name1").blur(function(){checkName();});
	$("#password1").blur(function(){checkPassword();});
	$("#form1").submit(function(){login();});
});
//验证用户名
function checkName(){
	var reg=/^\w{3,}$/g;
	var name=$("#name1").val();
	if(name==""){
		$("#namet1").html("請輸入用戶名不許為空！！！ ").css({color:"red"});
		return false;
	}
	if(!reg.test(name)){
		$("#namet1").html("用户名非法！").css({color:"red"});
		return false;
	}
	$("#namet1").html("（可包含0-9，a-z和下划线）").css({color:"black"});
	return true;
}
//验证密码
function checkPassword(){
	var reg=/^\S{6,}$/g;
	var pwd=$("#password1").val();
	if(pwd==""){
		$("#passwordt1").html("请输入密码！").css({color:"red"});
		return false;
	}
	if(pwd.length<6){
		$("#passwordt1").html("密码长度不够！").css({color:"red"});
		return false;
	}
	if(!reg.test(pwd)){
		$("#passwordt1").html("密码非法！").css({color:"red"});
		return false;
	}
	$("#passwordt1").html("（至少包含6个字符）").css({color:"black"});
	return true;
}
//验证登录
function login(){
	var b1=checkName();
	var b2=checkPassword();
	if(b1&&b2){
		return true;
	}
	return false;
}
//跳转登录界面
function registerNow(){
	location.href="Register.jsp";
}