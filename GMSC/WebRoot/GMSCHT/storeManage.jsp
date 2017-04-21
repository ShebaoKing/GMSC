<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>店铺管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	
	<script type="text/javascript">
    	function page(n){
    		location.href="../webpage/store?action=check&page="+n;
    	};
    	function del(id,page){
    		var b=confirm("确认删除吗？");
    		if(b){
    			location.href="../webpage/store?action=delete&store_id="+id+"&page="+page;
    		}
    	};
    </script>
	
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">店铺管理</p>
    </div>

    <hr />

    <div id="content">
    	<table border="1" align="center">
    		<tr>
    			<th width="130px">编号</th>
    			<th width="150px">店主</th>
    			<th width="350px">店铺名</th>
    			<th width="150px">审核状态</th>
    			<th width="100px">操作</th>
    		</tr>
			<c:forEach items="${storelist }" var="s">
				<tr>
                <td class="operate" align="center">${s.store_id }</td>
                <td align="center">${s.store_user_name}</td>
                <td align="center">${s.store_name}</td>
                <td align="center">
                	<c:if test="${s.store_type==1}">审核通过</c:if>
                	<c:if test="${s.store_type==2}"><span style="color:red;">待审核</span></c:if>
                	<c:if test="${s.store_type==3}"><span style="color:green;">审核未通过</span></c:if>
                </td>
                <td class="operate"><a href="../webpage/store?action=update&store_id=${s.store_id }&page=${page.pagenow }">修改</a>&nbsp;
              					    <a <c:if test="${s.store_type==3}">onclick='del(${s.store_id },${page.pagenow })'</c:if> >删除</a></td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="6" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/store?action=check&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/store?action=check&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
