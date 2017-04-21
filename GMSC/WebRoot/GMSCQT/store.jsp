<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>店铺信息</title>
	<link rel="stylesheet" type="text/css" href="../css/store.css"/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
		function goods(id){
			$.post(
				"store",
				{"action":"storeGoods","store_id":id},
				function(mess){
					for(var i=0;i<mess.length;i++){
						var str="<div class='one'><table id='one_t1'><tr><td align='center'><a href='good?action=checkOne&good_id="+mess[i].good_id+"'><img width='200px'"+
								" height='180px' src='good?action=download&good_pic="+mess[i].pic1+"'></a></td></tr>"+
								"<tr><td align='center'><a href='good?action=checkOne&good_id="+mess[i].good_id+"'>"+mess[i].good_name+"</a></td></tr></table></div>";
						$("#g").append(str);
					}
				},
				"json"
			);
		}
	</script>
  </head>
  
<body onload="goods('${store.store_id}')">
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
    <div class="body1">
    	<div class="head">
    		<div class="storeimg">
    			<div class="img">
					<c:if test="${store.store_photo != null }">
            			<img id="showImg" width="300px" height="180px" src="store?action=download&store_photo=${store.store_photo }">
            		</c:if>
    			</div>
    		</div>
    		<div class="storeinf">
    			<table id="inf">
    				<tr>
    					<td width="350px">店名：${store.store_name }</td>
    					<td rowspan="3"><img id="showImg" width="100px" height="100px" src="user?action=download&user_photo=${store.store_user_photo }"></td>
    				</tr>
    				<tr>
    					<td>店主：${store.store_user_name }</td>
    				</tr>
    				<tr>
    					<td>联系方式：${store.store_user_phone }</td>
    				</tr>
    			</table>
    		</div>
    	</div>
    	<div class="goods">
    		<div class="goods2" id="g">
    		</div>
    	</div>
  	 	<div class="foot">
    		<iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
   		</div>
    </div>
</body>
</html>
