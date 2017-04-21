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
    		location.href="../webpage/goodsclass?action=check&page="+n;
    	};
    	function del(id,page){
    		var b=confirm("确认删除吗？");
    		if(b){
    			location.href="../webpage/goodsclass?action=delete&class_id="+id+"&page="+page;
    		}
    	};
    </script>
	
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">大分类管理</p>
    </div>

    <hr/>

    <div id="content">
    	<table border="1" align="center">
    		<tr>
    			<th width="240px">编号</th>
    			<th width="400px">分类名称</th>
    			<th width="240px">操作</th>
    		</tr>
			<c:forEach items="${classlist }" var="c">
				<tr>
                <td class="operate" align="center" width="100px">${c.class_id }</td>
                <td align="center" width="400px">${u.user_name1 }${c.class_name}</td>
                <td class="operate"><a href="../webpage/goodsclass?action=update&class_id=${c.class_id }&page=${page.pagenow }">修改</a>&nbsp;
              					    <a href="javascript:del(${c.class_id },${page.pagenow })">删除</a></td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="3" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/goodsclass?action=check&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/goodsclass?action=check&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
