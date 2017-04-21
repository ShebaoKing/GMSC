<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加小分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">

    <style type="text/css">
        #content table {
            border: none;
        }

        #content table tr {
            line-height: 30px;
        }

        #content table tr td input[type='submit'] {
            padding: 4px 8px;
            font-size: 14px;
            letter-spacing: 2px;
            background-color: #8020c0;
            cursor: pointer;
        }
        
        #content td label,
        #content td input[type='radio'] {
        	cursor: pointer;
        }

        #content td input[type='password'],
        #content td input[type='text'] {
            width: 400px;
            line-height: 20px;
        }
    </style>
    <script type="text/javascript">
    	function check(){
        	$.get(
        		"../webpage/goodsclass",
        		{"action":"checkInf"},
        		function(mess){
        			for(var i=0;i<mess.length;i++){
        				var str="<option value="+mess[i].class_id+">"+mess[i].class_name+"</option>";
        				$("#class1").append(str);
        			};
        		},
        		"json"
        	);
        }; 
    </script>
  </head>
  
  <body onload="check()">
    <div id="header">
    	<p><img src="../images/arrows2.gif">添加小分类</p>
    </div>

    <hr />

    <div id="content">
    	<form action="../webpage/category?action=add" method="post">
            <table align="center" id="mytable">
                <tr>
                    <td>类目名：</td>
                     <td><input type="text" name="cate_name" /></td>
                </tr>
                <tr>
                    <td>类目名：</td>
                     <td>
                     	<select name="class_id" id="class1">
                    	 </select>
                     </td>
                </tr>
                 <tr>
                     <td></td>
                     <td><input type="submit" name="update" value="更新" /></td>
                 </tr>
            </table>   
        </form>
    </div>
  </body>
</html>
