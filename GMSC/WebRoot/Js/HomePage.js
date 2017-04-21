function goods(){
	$.post(
		"goodsclass",
		{"action":"checkAll"},
		function(json){
			for(var i=0;i<json.length;i++){
				var id=i+1;
				if(id==1){
					var str1="<div class='left_td1'><a href='good?action=checkClass&class_name="+json[i].class_name+"' id='left_font1'>"+json[i].class_name+"</a></div>";
					$("#left_t"+id).append(str1);
				}else{
					var str2="<div class='left_td2'><a href='good?action=checkClass&class_name="+json[i].class_name+"' id='left_font1'>"+json[i].class_name+"</a></div>";
					$("#left_t"+id).append(str2);
				}
				for(var j=0;j<json[i].cate.length;j++){
					var str3="<div class='left_td3'><a href='good?action=checkCate&cate_id="+json[i].cate[j].cate_id+"' id='left_font2'>"+json[i].cate[j].cate_name+"</a></div>";
					$("#left_t"+id).append(str3);
				}
			}
		},
		"json"
	);
	goods2();
	announcement();
	goods3();
}
function goods2(){
	$.post(
		"good",
		{"action":"checkHot"},
		function(json){
			for(var i=0;i<json.length;i++){
				var str="<div class='body_center_d2'><div class='body_center_d3'><a href='good?action=checkOne&good_id="+json[i].good_id+"'><img src='good?action=download&good_pic="+json[i].pic1+
				"' id='body_center_im1'/></a></div><div class='body_center_d4'><a href='good?action=checkOne&good_id="+json[i].good_id+"' id='left_font2'>"+json[i].good_name+
				"</a></div></div>";
				$("#center_t1").append(str);
			}
		},
		"json"
	);
}
function announcement(){
	$.post(
		"announcement",
		{"action":"show"},
		function(json){
			var str1="<p><a href='#'><img src='announcement?action=download&an_image="+json[0].an_image+"' id='body_right_im1'/></a></p>";
			$("#right_t1").append(str1);
			for(var i=0;i<json.length;i++){
				var str2="<div class='body_right_d3'><a href='#' id='left_font2'>"+json[i].an_title+"</a></div>";
				$("#right_t2").append(str2);
			}
		},
		"json"
	);
}
function goods3(){
	$.post(
			"good",
			{"action":"checkNew"},
			function(json){
				for(var i=0;i<json.length;i++){
					var str2="<div class='body_right_d5'><div class='body_right_d6'>"+
					"<a href='good?action=checkOne&good_id="+json[i].good_id+"'><img src='good?action=download&good_pic="+json[i].pic1+"' id='body_right_im2'/></a></div><div class='body_right_d7'>" +
					"<div class='body_right_d8'><a href='good?action=checkOne&good_id="+json[i].good_id+"' id='left_font2'>"+json[i].good_name+"</a></div></div></div>";
					$("#right_t3").append(str2);
				}
			},
			"json"
	);
}





