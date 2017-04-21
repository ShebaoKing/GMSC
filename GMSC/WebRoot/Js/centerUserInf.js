$(function(){
	$("#email1").blur(function(){checkEmail();});
	$("#phone1").blur(function(){checkPhone();});
	$("#user_hobby1").click(function(){checkHobby();});
	$("#user_hobby2").click(function(){checkHobby();});
	$("#user_hobby3").click(function(){checkHobby();});
	$("#submit1").mouseover(function(){checkEmail();checkPhone();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	var emailt1=$("#emailt1").html();
	if(emailt1=="✔"){
		b1=true;
	}else{
		b1=false;
	}
	var phonet1=$("#phonet1").html();
	if(phonet1=="✔"){
		b2=true;
	}else{
		b2=false;
	}
	b3=checkHobby();
	if(b1&&b2&&b3){
		return true;
	}
	alert("修改失败！");
	return false;
}
//检验邮箱
function checkEmail(){
	var reg=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/g;
	var email=$("#email1").val();
	var id=$("#id1").val();
	if(!reg.test(email)){
		$("#emailt1").html("请输入正确的邮箱！").css({color:"red"});
	}else{
		$.get(
				"../webpage/user?action=checkEmail",
				{"user_email":email,"user_id":id},
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
	var id=$("#id1").val();
	if(!reg.test(phone)){
		$("#phonet1").html("请输入正确的手机号码！").css({color:"red"});
	}else{
		$.get(
				"../webpage/user?action=checkPhone",
				{"user_phone":phone,"user_id":id},
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
