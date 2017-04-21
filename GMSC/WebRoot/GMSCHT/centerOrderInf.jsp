<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>订单信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">订单信息</p><hr>
    </div><div id="content">
    	<table border="1" align="center">
    		<tr>
    			<th width="60px">编号</th>
    			<th width="100px">商品</th>
    			<th width="120px">收件人</th>
    			<th width="350px">收货地址</th>
    			<th width="120px">下单时间</th>
    			<th width="100px">状态</th>
    			<th width="150px">操作</th>
    		</tr>
			<c:forEach items="${orderlist }" var="o">
				<tr height="50px">
                <td class="operate" align="center">${o.order_id }</td>
                <td align="center">${o.order_cate_name}</td>
                <td align="center">${o.order_name}</td>
                <td align="center">${o.order_address}</td>
                <td align="center">${o.order_date}</td>
                <td align="center">
                	<c:if test="${o.order_status==1}"><span style="color:red;">未审核</span></c:if>
                	<c:if test="${o.order_status==2}"><span style="color:red;">未发货</span></c:if>
                	<c:if test="${o.order_status==3}"><span style="color:green;">已发货</span></c:if>
                	<c:if test="${o.order_status==4}"><span style="color:blue;">已收货</span></c:if>
                	<c:if test="${o.order_status==5}">交易完成</c:if>
                </td>
                <td class="operate" align="center">
                	<a href="../webpage/order?action=checkOne&order_id=${o.order_id }">查看</a>
                	<c:if test="${o.order_status==3}">
	              		<a href="../webpage/order?action=userUpdate2&order_id=${o.order_id }&user_name=${user.user_name}&page=${page.pagenow }">确认收货</a>
                	</c:if>
                	<c:if test="${o.order_status==5}">
	              		<a href="../webpage/order?action=delete2&order_id=${o.order_id }&user_name=${user.user_name}&page=${page.pagenow }">删除</a>
                	</c:if>
	             </td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="7" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/order?action=check3&user_name=${user.user_name}&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/order?action=check3&user_name=${user.user_name}&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
