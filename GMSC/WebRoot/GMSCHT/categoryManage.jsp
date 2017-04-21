<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>公共管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	<script type="text/javascript">
    	function page(n){
    		location.href="../webpage/category?action=check&page="+n;
    	};
    	function del(id,page){
    		var b=confirm("确认删除吗？");
    		if(b){
    			location.href="../webpage/category?action=delete&cate_id="+id+"&page="+page;
    		}
    	};
    </script>
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">商品小分类管理</p>
    </div>

    <hr />

    <div id="content">
    	<table border="1" align="center">
    		<tr>
    			<th width="130px">编号</th>
    			<th width="300px">商品小类别</th>
    			<th width="300px">所属大类别</th>
    			<th width="150px">操作</th>
    		</tr>
			<c:forEach items="${catelist }" var="c">
				<tr>
                <td class="operate" align="center" width="100px">${c.cate_id }</td>
                <td align="center" width="200px">${c.cate_name}</td>
                <td align="center" width="200px">${c.class_name}</td>
                <td class="operate"><a href="../webpage/category?action=update&cate_id=${c.cate_id }&page=${page.pagenow }">修改</a>&nbsp;
              					    <a href="javascript:del(${c.cate_id },${page.pagenow })">删除</a></td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="4" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/category?action=check&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/category?action=check&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
