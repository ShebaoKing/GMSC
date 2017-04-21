$(function(){
	$("#name1").blur(function(){checkName();});
	$("#card1").blur(function(){checkCard();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	checkName();
	checkCard();
	var namet1=$("#namet1").html();
	if(namet1=="✔"){
		b1=true;
	}else{
		b1=false;
	}
	var cardt1=$("#cardt1").html();
	if(cardt1=="✔"){
		b2=true;
	}else{
		b2=false;
	}
	b3=checkPhoto();
	if(b1&&b2&&b3){
		return true;
	}
	alert("申请失败！");
	return false;
}
//检验店铺名称
function checkName(){
	var reg=/^[\u4E00-\u9FA6]{3,}$/gi;
	var name=$("#name1").val();
	if(!reg.test(name)){
		$("#namet1").html("名称非法！").css({color:"red"});
	}else{
		$.get(
				"../webpage/store",
				{"action":"checkName","store_name":name},
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
//检验店铺图片
function checkPhoto(){
	var photo=$("#photo1").val();
	if(photo==""){
		$("#photot1").html("请上传图片！").css({color:"red"});
		return false;
	}
	$("#photot1").html("✔").css({color:"green"});
	return true;
}
//检验身份证
function checkCard(){
	var reg=/^\d{18}$|^\d{15}$/g;
	var card=$("#card1").val();
	if(!reg.test(card)){
		$("#cardt1").html("身份证号非法！").css({color:"red"});
	}else{
		$.get(
				"../webpage/store?action=checkCard",
				{"action":"checkCard","store_card":card},
				function(mess){
					if(mess!=""){
						$("#cardt1").html(mess).css({color:"red"});
					}else{
						$("#cardt1").html("✔").css({color:"green"});
					}
				}
		);
	}
}