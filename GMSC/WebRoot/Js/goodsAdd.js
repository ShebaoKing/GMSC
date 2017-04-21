$(function(){
	$("#name1").blur(function(){checkName();});
	$("#count1").blur(function(){checkCount();});
	$("#sale1").blur(function(){checkSale();});
	$("#dz1").blur(function(){checkDz();});
	$("#pic").blur(function(){checkPic();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	b1=checkName();
	b2=checkCount();
	b3=checkSale();
	b4=checkDz();
	b5=checkPic();
	b6=checkClass();
	if(b1&&b2&&b3&&b4&&b5&&b6){
		return true;
	}
	alert("发布失败！");
	return false;
}
//检验商品名
function checkName(){
	var reg=/^[\u4E00-\u9FA6]+\S*$/g;
	var name=$("#name1").val();
	if(!reg.test(name)){
		$("#namet1").html("请输入正确的名称！").css({color:"red"});
		return false;
	}
	$("#namet1").html("✔").css({color:"green"});
	return true;
}
//检验库存
function checkCount(){
	var reg=/^\d+$/g;
	var count=$("#count1").val();
	if(!reg.test(count)){
		$("#countt1").html("库存非法！").css({color:"red"});
		return false;
	}
	$("#countt1").html("✔").css({color:"green"});
	return true;
}
//检验价格
function checkSale(){
	var reg=/^\d+$|^\d+.\d{1,2}$/g;
	var sale=$("#sale1").val();
	if(!reg.test(sale)){
		$("#salet1").html("价格非法！").css({color:"red"});
		return false;
	}
	$("#salet1").html("✔").css({color:"green"});
	return true;
}
//检验折扣
function checkDz(){
	var reg=/^1$|^0.[1-9]{1,2}$/g;
	var dz=$("#dz1").val();
	if(!reg.test(dz)){
		$("#dzt1").html("折扣非法！").css({color:"red"});
		return false;
	}
	$("#dzt1").html("✔").css({color:"green"});
	return true;
}
//检验图片
function checkPic(){
	var pic=$("#pic").val();
	if(pic==""){
		$("#pict1").html("请选择图片！").css({color:"red"});
		return false;
	}
	$("#pict1").html("✔").css({color:"green"});
	return true;
}
//检验小分类
function checkClass(){
	var cl=$("#class2").val();
	if(cl==0){
		$("#classt1").html("请选择分类！").css({color:"red"});
		return false;
	}
	$("#classt1").html("✔").css({color:"green"});
	return true;
}