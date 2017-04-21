<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="../css/i_frame.css">
  	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
    <script type="text/javascript">
    	function page(n){
    		location.href="../webpage/user?action=check&page="+n;
    	};
    	function del(id,page){
    		var b=confirm("确认删除吗？");
    		if(b){
    			location.href="../webpage/user?action=delete&user_id="+id+"&page="+page;
    		}
    	};
    </script>
  </head>
  
  <body>
    <div id="header">
        <p><img src="../images/arrows2.gif">用户管理</p>
    </div>

    <hr/>

    <div id="content">
        <table border="1px" align="center">
            <tr>
                <th width="100px">编号</th>
                <th width="120px">昵称</th>
                <th width="100px">性别</th>
                <th width="240px">Email</th>
                <th width="200px">手机</th>
                <th width="120px">操作</th>
            </tr>
			<c:forEach items="${userList }" var="u">
				<tr>
                <td class="operate" align="center" width="100px">${u.user_id }</td>
                <td align="center" width="100px">${u.user_name }</td>
                <td align="center" width="100px">${u.user_sex }</td>
                <td align="center" width="200px">${u.user_email }</td>
                <td align="center" width="200px">${u.user_phone }</td>
                <td class="operate"><a href="../webpage/user?action=update&user_id=${u.user_id }&page=${page.pagenow}">修改</a>&nbsp;
              					    <a href="#" onclick="del('${u.user_id }','${page.pagenow }')">删除</a></td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="6" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/user?action=check&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/user?action=check&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
        </table>
    </div>
  </body>
</html>
