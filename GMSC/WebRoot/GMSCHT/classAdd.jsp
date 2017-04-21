<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加类目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <script type="text/javascript" src="js/jquery-1.8.1.js"></script>
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
  </head>
  
  <body>
    <div id="header">
    	<p><img src="../images/arrows2.gif">添加类目</p>
    </div>

    <hr />

    <div id="content">
    	<form action="../webpage/goodsclass?action=add" method="post">
            <table align="center" id="mytable">
                <tr>
                    <td>大类目：</td>
                     <td><input type="text" name="class_name" /></td>
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
