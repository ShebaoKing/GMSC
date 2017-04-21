<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品信息</title>
	<link rel="stylesheet" type="text/css" href="../css/Goods.css"/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
		function add(id,user_id,store_id){
			if(user_id==0){
				alert("请先登录!");
			}else if(user_id==-1){
				alert("商品库存不足!");
			}else if(user_id==store_id){
				alert("买家无法购买自己店铺的商品!");
			}else{	
				$.post(
					"goodscar",
					{"action":"add","car_goods_id":id,"car_user_id":user_id,"car_no":"1"},
					function(mess){
						alert(mess);
					}
				);
			}
		}
		function changeImg(img){
			$("#showImg").attr("src","good?action=download&good_pic="+img);
		}
	
	</script>
  </head>
  
<body>
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
    <div class="body1">
    	<div class="body2">
    		<p>${g.good_name }</p>
    	</div>
    	<div class="body3">
    		<div class="body3_1">
    			<div class="body3_1_1">
    				<table class="body3_1_t1">
    					<tr>
    						<td>
    						<c:if test="${g.pic1 != null }">
                				<img id="showImg" width="300px" height="200px" src="good?action=download&good_pic=${g.pic1 }">
                			</c:if>
    						</td>
    					</tr>
    				</table>
    			</div>
    			<div class="body3_1_2">
    				<div class="body3_1_t2">
    						<div class="body3_1_d1">
    						<c:if test="${g.pic1 != null }">
                				<img onclick="changeImg('${g.pic1}')" width="80px" height="60px" src="good?action=download&good_pic=${g.pic1 }">
		                	</c:if>
    						</div>
    						<div class="body3_1_d1">
		                	<c:if test="${g.pic2 != null }">
		                		<img onclick="changeImg('${g.pic2}')" width="80px" height="60px" src="good?action=download&good_pic=${g.pic2 }">
		                	</c:if>
    						</div>
    						<div class="body3_1_d1">
		                	<c:if test="${g.pic3 != null }">
		                		<img onclick="changeImg('${g.pic3}')" width="80px" height="60px" src="good?action=download&good_pic=${g.pic3 }">
		                	</c:if>
    						</div>
    						<div class="body3_1_d1">
		                	<c:if test="${g.pic4 != null }">
		                		<img onclick="changeImg('${g.pic4}')" width="80px" height="60px" src="good?action=download&good_pic=${g.pic4 }">
		                	</c:if>
    						</div>
    				</div>
    			</div>
    			<div class="body3_1_3">
    				<table class="body3_1_t3">
    					<tr>
    						<td><img src="../images/share.gif"/></td>
    						<td><img src="../images/favthis.gif"/></td>
    					</tr>
    				</table>
    			</div>
    		</div>
    		<div class="body3_2">
    			<table class="body3_t2">
    				<tr>
    					<td>售价：￥${g.good_sale }</td>
    				</tr>
    				<tr>
    				<c:if test="${user==null }" var="b">
    					<td><a  onclick="add(${g.good_id },0)"><img src="../images/buynow.gif"/></a></td>
    				</c:if>
    				<c:if test="${!b }">
    					<c:if test="${g.good_count<1 }" var="b1">    					
    						<td><a onclick="add(${g.good_id },-1,0)"><img src="../images/buynow.gif"/></a></td>
    					</c:if>
    					<c:if test="${!b1}">    					
    						<td><a onclick="add(${g.good_id },${user.user_id },${g.store.store_user_id })"><img src="../images/buynow.gif"/></a></td>
    					</c:if>
    					
    				</c:if>
    				</tr>
    				<tr>
    					<td>库存：${g.good_count }件</td>
    				</tr>
    				<tr>
    					<td>销量：${g.sale_count }件</td>
    				</tr>
    				<tr>
    					<td>优惠：${g.sale_dz*10 }折</td>
    				</tr>
    				<tr>
    					<td>店铺：<a style="text-decoration:none;color:green;font-weight:bold;" href="store?action=checkOne&store_id=${g.store.store_id }">${g.store.store_name }</a></td>
    				</tr>
    				<tr>
    					<td>卖家：${g.store.store_user_name }</td>
    				</tr>
    				<tr>
    					<td>联系方式：${g.store.store_user_phone }</td>
    				</tr>
    			</table>
    		</div>
    	</div>
    </div>
    <iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
</body>
</html>
