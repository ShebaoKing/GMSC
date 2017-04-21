<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>店铺一览</title>
	<link rel="stylesheet" type="text/css" href="../css/Category.css"/>
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript">
    	function page(n){
    		location.href="store?action=checkAll&page="+n;
    	};
    </script>
  </head>
  
<body>
	<iframe class="iframe_head" scrolling="no" src="../webpage/HomePageHead.jsp"></iframe>
    <div class="body1">
    	<div class="body2">
	    	<table align="center" class="body_t1">
	    		<tr>
	                <th width="277px">店铺图片</th>
	                <th width="300px">店铺名称</th>
	                <th width="300px">店主</th>
	    		</tr>
				<c:forEach items="${storelist }" var="s">
				<tr>
	                <td align="center" valign="top" height="160px">
	                	<a href="store?action=checkOne&store_id=${s.store_id }"><img width="160px" height="160px" src="store?action=download&store_photo=${s.store_photo }"></a>
	                </td>
	                <td align="center"><a href="store?action=checkOne&store_id=${s.store_id }">${s.store_name}</a></td>
	                <td align="center">${s.store_user_name}</td>
	           	</tr>
				</c:forEach>
	    	</table>
    	</div>
    	<div class="body3">
    		<table class="body_t1">
				<tr>
					<td align="left">
					<span>当前页数：${page.pagenow }&nbsp;</span>
					<a href="store?action=checkAll&page=${page.pagenow-1 }">上一页</a>
					<select onchange="page(this.value)">
						<c:forEach begin="1" end="${page.pagecount }" var="n">
							<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
						</c:forEach>
					</select>
					<a href="store?action=checkAll&page=${page.pagenow+1 }">下一页</a>
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
