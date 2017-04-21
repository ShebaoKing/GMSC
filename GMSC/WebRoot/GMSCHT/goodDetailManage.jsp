<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品管理</title>
    
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
    	<p><img src="../images/arrows2.gif">商品详细信息管理</p>
    </div>

    <hr />

    <div id="content">
    	<table border="1" align="center">
    		<tr>
    			<th width="60px">商品编号</th>
                <th width="100px">商品名称</th>
                <th width="80px">店铺</th>
                <th width="70px">所属分类</th>
                <th width="70px">商品状态</th>
                <th width="70px">商品类型</th>
                <th width="60px">价格</th>
                <th width="50px">库存</th>
    			<th width="170px">图片</th>
    			<th width="100px">操作</th>
    		</tr>
			<c:forEach items="${goodslist }" var="g">
				<tr height="170px">
                <td class="operate" align="center">${g.good_id }</td>
                <td align="center">${g.good_name}</td>
                <td align="center">${g.store.store_name}</td>
                <td align="center">${g.cate_name}</td>
                <td align="center">
                	<c:if test="${g.describe==0}">普通</c:if>
                	<c:if test="${g.describe==1}"><span style="color:red;">疯狂抢购</span></c:if>
                </td>
                <td align="center">
                	<c:if test="${g.good_type==0}">普通</c:if>
                	<c:if test="${g.good_type==1}"><span style="color:green;">全新</span></c:if>
                </td>
                <td align="center">${g.good_sale}</td>
                <td align="center">${g.good_count}</td>
                <td align="left" valign="top" height="160px">
                	<c:if test="${g.pic1 != null }">
                		<img width="80px" height="80px" src="good?action=download&good_pic=${g.pic1 }">
                	</c:if>
                	<c:if test="${g.pic2 != null }">
                		<img width="80px" height="80px" src="good?action=download&good_pic=${g.pic2 }">
                	</c:if>
                	<c:if test="${g.pic3 != null }">
                		<img width="80px" height="80px" src="good?action=download&good_pic=${g.pic3 }">
                	</c:if>
                	<c:if test="${g.pic4 != null }">
                		<img width="80px" height="80px" src="good?action=download&good_pic=${g.pic4 }">
                	</c:if>
                </td>
                <td class="operate"><a href="../webpage/good?action=update&good_id=${g.good_id }&page=${page.pagenow }">修改</a>&nbsp;
              					    <a href="../webpage/good?action=delete&good_id=${g.good_id }&page=${page.pagenow }">删除</a></td>
           		 </tr>
			</c:forEach>
			<tr><td colspan="10" align="right">
			<span>当前页数：${page.pagenow }&nbsp;</span>
			<a href="../webpage/good?action=check&page=${page.pagenow-1 }">上一页</a>
			<select onchange="page(this.value)">
				<c:forEach begin="1" end="${page.pagecount }" var="n">
					<option value="${n }" <c:if test="${page.pagenow==n }">selected="selected"</c:if>>${n }</option>
				</c:forEach>
			</select>
			<a href="../webpage/good?action=check&page=${page.pagenow+1 }">下一页</a>
			</td></tr>
    	</table>
    </div>
  </body>
</html>
