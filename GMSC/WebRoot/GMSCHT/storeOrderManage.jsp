<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>订单管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	
	<script type="text/javascript">
    	function page(id,n){
    		location.href="../webpage/order?action=storeCheck&store_id="+id+"&page="+n;
    	};
    </script>
	
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">订单管理</p>
    </div>

    <hr />

    <div id="content">
    	<div align="right">
    	<form action="../webpage/order?action=storeCheck2" method="post">
    		<input type="hidden" name="store_id" value="${user.store.store_id }">
    		<span style="font-size:13px">订单号：<input type="text" name="order_id">
    		订货人：<input type="text" name="user_name"></span>
    		<input type="submit" value="查询">
    	</form>
    	</div>
    	<table border="1" align="center">
    		<tr>
    			<th width="60px">编号</th>
    			<th width="100px">下单人</th>
    			<th width="100px">购买商品</th>
    			<th width="350px">发货地址</th>
    			<th width="90px">下单时间</th>
    			<th width="80px">状态</th>
    			<th width="100px">操作</th>
    		</tr>
			<c:forEach items="${orderlist }" var="o">
			<c:set var="store_id" value="${o.store.store_id}"></c:set>
				<tr>
                <td class="operate" align="center">${o.order_id }</td>
                <td align="center">${o.order_user_name}</td>
                <td align="center">${o.order_cate_name}</td>
                <td align="center">${o.order_address}</td>
                <td align="center">${o.order_date}</td>
                <td align="center">
                	<c:if test="${o.order_status==1}"><span style="color:red;">未审核</span></c:if>
                	<c:if test="${o.order_status==2}"><span style="color:red;">未发货</span></c:if>
                	<c:if test="${o.order_status==3}"><span style="color:green;">已发货</span></c:if>
                	<c:if test="${o.order_status==4}"><span style="color:red;">已收货</span></c:if>
                	<c:if test="${o.order_status==5}">交易完成</c:if>
                </td>
                <td class="operate">
                	<a href="../webpage/order?action=checkOne&order_id=${o.order_id }">查看</a>
                	<c:if test="${o.order_status==4}">
                		<a href="../webpage/order?action=storeUpdate2&order_status=5&store_id=${o.store.store_id }&order_id=${o.order_id }&page=${page.pagenow }">完成交易</a>
                	</c:if>
                	<c:if test="${o.order_status<3}">
                		<a href="../webpage/order?action=storeUpdate&store_id=${o.store.store_id }&order_id=${o.order_id }&page=${page.pagenow }">修改</a>
                	</c:if>
              	</td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="7" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/order?action=storeCheck&store_id=${store_id }&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(${store_id },this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/order?action=storeCheck&store_id=${store_id }&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
