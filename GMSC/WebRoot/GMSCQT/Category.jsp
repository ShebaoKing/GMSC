<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>分类商品</title>
	<link rel="stylesheet" type="text/css" href="../css/Category.css"/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
    	function page(id,n){
    		location.href="../webpage/good?action=checkCate&cate_id="+id+"&page="+n;
    	};
    </script>
  </head>
  
<body>
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
    <div class="body1">
    	<div class="body2">
	    	<table align="center" class="body_t1">
	    		<tr>
	                <th width="277px">商品图片</th>
	                <th width="300px">商品名称/店铺/店主</th>
	                <th width="200px">价格</th>
	                <th width="200px">优惠</th>
	    		</tr>
				<c:forEach items="${goodslist }" var="g">
				<c:set var="cate_id" value="${g.cate_id }"></c:set>
				<tr>
	                <td rowspan="5" align="center" valign="top" height="160px">
	                	<c:if test="${g.pic1 != null }">
	                		<a href="good?action=checkOne&good_id=${g.good_id }"><img width="160px" height="160px" src="good?action=download&good_pic=${g.pic1 }"></a>
	                	</c:if>
	                </td>
	                <td height="40px"></td>
	                <td rowspan="5" align="center">￥${g.good_sale}</td>
	                <td rowspan="5" align="center">${g.sale_dz*10}折</td>
	           	</tr>
				<tr>
		            <td height="30px" align="center"><span style="font-size:15px;">商品名：<a href="good?action=checkOne&good_id=${g.good_id }">${g.good_name }</a></span></td>
	           	</tr>
				<tr>
		            <td height="30px" align="center"><span style="font-size:15px;">店铺：<a style="text-decoration:none;color:green;font-weight:bold;" href="store?action=checkOne&store_id=${g.store.store_id }">${g.store.store_name }</a></span></td>
	           	</tr>
				<tr>
		            <td height="30px" align="center"><span style="font-size:15px;">店主：${g.store.store_user_name }</span></td>
	           	</tr>
				<tr>
		            <td height="40px"></td>
	           	</tr>
				</c:forEach>
	    	</table>
    	</div>
    	<div class="body3">
    		<table class="body_t1">
				<tr>
					<td align="left">
					<span>当前页数：${page.pagenow }&nbsp;</span>
					<a href="../webpage/good?action=checkCate&cate_id=${cate_id}&page=${page.pagenow-1 }">上一页</a>
					<select onchange="page(${cate_id },this.value)">
						<c:forEach begin="1" end="${page.pagecount }" var="n">
							<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
						</c:forEach>
					</select>
					<a href="../webpage/good?action=checkCate&cate_id=${cate_id}&page=${page.pagenow+1 }">下一页</a>
					</td>
				</tr>
    		</table>
    	</div>
    <div class="body4">
   		 <iframe src="../webpage/HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
    </div>
    </div>
</body>
</html>
