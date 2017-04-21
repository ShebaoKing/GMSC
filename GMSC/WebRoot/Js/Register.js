$(function(){
	$("#name1").blur(function(){checkName();});
	$("#user1").blur(function(){checkUser();});
	$("#password1").blur(function(){checkPassword1();});
	$("#password2").blur(function(){checkPassword2();});
	$("#email1").blur(function(){checkEmail();});
	$("#phone1").blur(function(){checkPhone();});
	$("#user_hobby1").click(function(){checkHobby();});
	$("#user_hobby2").click(function(){checkHobby();});
	$("#user_hobby3").click(function(){checkHobby();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	checkName();
	var namet1=$("#namet1").html();
	if(namet1=="✔"){
		b1=true;
	}else{
		b1=false;
	}
	checkUser();
	var usert1=$("#usert1").html();
	if(usert1=="✔"){
		b3=true;
	}else{
		b3=false;
	}
	b4=checkPassword1();
	b5=checkPassword2();
	checkEmail();
	var emailt1=$("#emailt1").html();
	if(emailt1=="✔"){
		b6=true;
	}else{
		b6=false;
	}
	checkPhone();
	var phonet1=$("#phonet1").html();
	if(phonet1=="✔"){
		b=true;
	}else{
		b=false;
	}
	b7=checkBirthday();
	b8=checkHobby();
	b9=checkPhoto();
	if(b&&b1&&b3&&b4&&b5&&b6&&b7&&b8&&b9){
		alert("注册成功！");
		return true;
	}
	alert("注册失败！");
	return false;
}
//检验昵称
function checkName(){
	var reg=/^[\u4E00-\u9FA6]+$|^[a-z]+$/gi;
	var name=$("#name1").val();
	if(!reg.test(name)){
		$("#namet1").html("昵称非法！").css({color:"red"});
	}else{
		$.get(
				"user?action=checkName",
				{"user_name":name},
				function(mess){
					if(mess!=""){
						$("#namet1").html(mess).css({color:"red"});
					}else{
						$("#namet1").html("✔").css({color:"green"});
					}
				}
		);
	}
}
//检验登录名
function checkUser(){
	var reg=/^\w{6,}$/g;
	var user=$("#user1").val();
	if(!reg.test(user)){
		$("#usert1").html("登录名不得少于6个字符！").css({color:"red"});
	}else{
		$.get(
				"user?action=checkLogin",
				{"user_login":user},
				function(mess){
					if(mess!=""){
						$("#usert1").html(mess).css({color:"red"});
					}else{
						$("#usert1").html("✔").css({color:"green"});
					}
				}
		);
	}
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
//检验邮箱
function checkEmail(){
	var reg=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/g;
	var email=$("#email1").val();
	if(!reg.test(email)){
		$("#emailt1").html("请输入正确的邮箱！").css({color:"red"});
	}else{
		$.get(
				"user?action=checkEmail",
				{"user_email":email},
				function(mess){
					if(mess!=""){
						$("#emailt1").html(mess).css({color:"red"});
					}else{
						$("#emailt1").html("✔").css({color:"green"});
					}
				}
		);
	}
}
//检验电话号码
function checkPhone(){
	var reg=/^\d{11}$/g;
	var phone=$("#phone1").val();
	if(!reg.test(phone)){
		$("#phonet1").html("请输入正确的手机号码！").css({color:"red"});
	}else{
		$.get(
				"user?action=checkPhone",
				{"user_phone":phone},
				function(mess){
					if(mess!=""){
						$("#phonet1").html(mess).css({color:"red"});
					}else{
						$("#phonet1").html("✔").css({color:"green"});
					}
				}
		);
	}
}
//检验头像
function checkPhoto(){
	var photo=$("#portrait1").val();
	if(photo==""){
		$("#photot1").html("请上传头像！").css({color:"red"});
		return false;
	}
	$("#photot1").html("✔").css({color:"green"});
	return true;
}
//检验爱好
function checkHobby(){
	var hobby1=$("#user_hobby1").attr("checked");
	var hobby2=$("#user_hobby2").attr("checked");
	var hobby3=$("#user_hobby3").attr("checked");
	if(hobby1=="checked"||hobby2=="checked"||hobby3=="checked"){
		$("#hobbyt1").html("✔").css({color:"green"});
		return true;
	}
	$("#hobbyt1").html("请选择爱好！").css({color:"red"});
	return false;
}
//检验出生日期
function checkBirthday(){
	var year=$("#birthday1").val();
	var month=$("#birthday2").val();
	var day=$("#birthday3").val();
	if(year=="null" || month=="null" || day=="null"){
		$("#birthdayt1").html("请选择出生日期！").css({color:"red"});
		return false;
	}
	$("#birthdayt1").html("✔").css({color:"green"});
	return true;
}
