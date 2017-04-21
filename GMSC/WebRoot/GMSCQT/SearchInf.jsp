<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>分类商品</title>
	<link rel="stylesheet" type="text/css" href="../css/Category.css"/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
    	function page(inf,n){
    		location.href="../webpage/good?action=searchInf&search="+inf+"&page="+n;
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
	                <th width="300px">商品名称</th>
	                <th width="200px">价格</th>
	                <th width="200px">优惠</th>
	    		</tr>
				<c:forEach items="${goodslist }" var="g">
				<c:set var="cate_id" value="${g.cate_id }"></c:set>
					<tr height="170px">
	                <td align="center" valign="top" height="160px">
	                	<c:if test="${g.pic1 != null }">
	                		<a href="good?action=checkOne&good_id=${g.good_id }"><img width="160px" height="160px" src="good?action=download&good_pic=${g.pic1 }"></a>
	                	</c:if>
	                </td>
		            <td align="center"><a href="good?action=checkOne&good_id=${g.good_id }">${g.good_name }</a></td>
	                <td align="center">￥${g.good_sale}</td>
	                <td align="center">${g.sale_dz*10}折</td>
	           		 </tr>
				</c:forEach>
	    	</table>
    	</div>
    	<div class="body3">
    		<table class="body_t1">
				<tr>
					<td align="left">
					<span>当前页数：${page.pagenow }&nbsp;</span>
					<a href="../webpage/good?action=searchInf&search=${search}&page=${page.pagenow-1 }">上一页</a>
					<select onchange="page(${search },this.value)">
						<c:forEach begin="1" end="${page.pagecount }" var="n">
							<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
						</c:forEach>
					</select>
					<a href="../webpage/good?action=searchInf&search=${search}&page=${page.pagenow+1 }">下一页</a>
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
