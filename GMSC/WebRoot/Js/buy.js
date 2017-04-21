$(function(){
	$("#name1").blur(function(){checkName();});
	$("#phone1").blur(function(){checkPhone();});
	$("#address1").blur(function(){checkAddress();});
	$("form:first").submit(function(){return sub();});
});
//提交数据
function sub(){
	var b1=checkName();
	var b2=checkPhone();
	var b3=checkAddress();
	if(b1&&b2&&b3){
		return true;
	}
	alert("下单失败！");
	return false;
}
//验证收件人
function checkName(){
	var reg=/^[\u4E00-\u9FA6]+$/gi;
	var name=$("#name1").val();
	if(name==""){
		$("#namet1").html("收件人姓名不能为空！").css({color:"red"});
		return false;
	}
	if(!reg.test(name)){
		$("#namet1").html("收件人姓名非法！").css({color:"red"});
		return false;
	}
	$("#namet1").html("✔").css({color:"green"});
	return true;
}
//验证收件人号码
function checkPhone(){
	var reg=/^\d{11}$/g;
	var phone=$("#phone1").val();
	if(!reg.test(phone)){
		$("#phonet1").html("请输入正确的手机号码！").css({color:"red"});
		return false;
	}
	$("#phonet1").html("✔").css({color:"green"});
	return true;
}
//验证收件人地址
function checkAddress(){
	var reg=/^[\u4E00-\u9FA6]+\w*$/g;
	var add=$("#address1").val();
	if(!reg.test(add)){
		$("#addresst1").html("请输入正确的地址！").css({color:"red"});
		return false;
	}
	$("#addresst1").html("✔").css({color:"green"});
	return true;
}
function showall(id){
	
			$.get(
				"../webpage/goodscar",
				{"action":"check","user_id":id},
				function(json){
					var sum=0;
					var ssum=0;
					for(var i=0;i<json.length;i++){
						var sum1=json[i].goods.good_sale*json[i].goods.sale_dz;
						sum+=sum1*json[i].car_no;
						ssum=ssum+json[i].goods.good_sale*json[i].car_no*(1-json[i].goods.sale_dz);
						var zk=json[i].goods.sale_dz*10;
						var str="<tr align='left' height='30px'>"+
	      						"<td>"+json[i].goods.good_name+"</td>"+
	        					"<td>￥"+json[i].goods.good_sale+"</td>"+
	    	 				    "<td>￥"+sum1+"</td>"+
	     	   				    "<td>"+zk+"折</td>"+
	        					"<td><input type='text' onblur='update("+json[i].car_user_id+","+json[i].car_id+
	        					",this.value)' size='10px' value='"+json[i].car_no+"' id='car"+json[i].car_id+"''>件</td><td>"+
	        					"<a href='#' onclick='del("+json[i].car_id+","+json[i].car_user_id+")'>删除</a>"+
	        					"</td></tr>";
						$("#t1").append(str);
					}
					
					var str2="<tr><td><a href='../webpage/HomePage.jsp'>继续挑选商品</a></td><td colspan='2'>"+
	     					  "您需付款：￥<span style='color:green;font-weight:bold;' id='sum'>"+sum+"</span></td>"+
	     					  "<td colspan='3'>为您节省：￥<span style='color:red;font-weight:bold;'"+
	     					  " id='ssum'>"+ssum+"</span></td></tr>";
					$("#t1").append(str2);
				},
				'json'
			);
		
		}
//修改
function update(user_id,car_id,num){
	if(num<=0 || isNaN(num)){
		alert("你输入的数据不合法！");
		$("#car"+car_id).val(1);
		num=1;
		update(user_id,car_id,num);
	}else{
		$.post(
			"../webpage/goodscar",
			{"action":"update","car_id":car_id,"car_no":num,"user_id":user_id},
			function(json){
				$("#sum").html(json[0]);
				$("#ssum").html(json[1]);
			},
			"json"
		);
	}
	

}
function del(id1,id2){
	var b=confirm("确认删除吗？");
	if(b){
		location.href="../webpage/goodscar?action=delete&car_id="+id1+"&car_user_id="+id2;
	}
};