$(function(){
	$("#name1").blur(function(){checkName();});
	$("#count1").blur(function(){checkCount();});
	$("#sale1").blur(function(){checkSale();});
	$("#dz1").blur(function(){checkDz();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	b1=checkName();
	b2=checkCount();
	b3=checkSale();
	b4=checkDz();
	if(b1&&b2&&b3&&b4){
		return true;
	}
	alert("修改失败！");
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
	var reg=/^1$|^1.0$|^0.[1-9]{1,2}$/g;
	var dz=$("#dz1").val();
	if(!reg.test(dz)){
		$("#dzt1").html("折扣非法！").css({color:"red"});
		return false;
	}
	$("#dzt1").html("✔").css({color:"green"});
	return true;
}

//查询大分类
function check(class_id,cate_id){
	$.get(
		"../webpage/goodsclass",
		{"action":"checkInf"},
		function(mess){
			for(var i=0;i<mess.length;i++){
				var str="<option value="+mess[i].class_id;
				if(class_id==mess[i].class_id){
					str=str+" selected='selected'";
				}
				str=str+">"+mess[i].class_name+"</option>";
				$("#class1").append(str);
			};
		},
		"json"
	);
	check2(class_id,cate_id);
};
//查询默认被选中小分类
function check2(class_id,cate_id){
	document.getElementById("class2").options.length=0;
	$.get(
		"../webpage/category",
		{"action":"checkInf","class_id":class_id},
		function(mess){
			for(var i=0;i<mess.length;i++){
				var str="<option value="+mess[i].cate_id;
				if(cate_id==mess[i].cate_id){
					str=str+" selected='selected'";
				}
				str=str+">"+mess[i].cate_name+"</option>";
				$("#class2").append(str);
			};
		},
		"json"
	);
};
//查询更改大分类下小分类
function check3(class_id){
	document.getElementById("class2").options.length=0;
	$.get(
		"../webpage/category",
		{"action":"checkInf","class_id":class_id},
		function(mess){
			for(var i=0;i<mess.length;i++){
				var str="<option value="+mess[i].cate_id+">"+mess[i].cate_name+"</option>";
				$("#class2").append(str);
			};
		},
		"json"
	);
};