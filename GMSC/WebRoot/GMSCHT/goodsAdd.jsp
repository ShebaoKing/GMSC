<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

   
	<link rel="stylesheet" type="text/css" href="../css/i_frame.css">
	<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
	<script type="text/javascript" src="../Js/goodsAdd.js"></script>
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
        $(function() {
            $('#mytable tr').each(function() {
                $(this).find("td:first").css({'textAlign':'right','padding-right':'5px'});
            });
        });
        function ch(){
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
        }        
        function ch2(c){
        	document.getElementById("class2").options.length=1;
        	$.get(
        		"../webpage/category",
        		{"action":"checkInf","class_id":c},
        		function(mess){
        			for(var i=0;i<mess.length;i++){
        				var str="<option value="+mess[i].cate_id+">"+mess[i].cate_name+"</option>";
        				$("#class2").append(str);
        			};
        		},
        		"json"
        	);
        }       
    </script>
  </head>
  
  <body onload="ch()">
    <div id="header">
    	<p><img src="../images/arrows2.gif">添加商品</p>
    </div>

    <hr />

    <div id="content">
    	<form action="../webpage/good?action=add" method="post" enctype="multipart/form-data">
            <table align="center" id="mytable">
                <tr>
                    <td>商品名：</td>
                     <td>
                     	<input type="hidden" name="describe" value="0" readonly="readonly">
            			<input type="hidden" name="good_type" value="0" readonly="readonly">
            			<input type="hidden" name="store_id" value="${user.store.store_id }" readonly="readonly">
                     	<input type="text" name="good_name" id="name1"/><span id="namet1"></span>
                     </td>
                </tr>

                 <tr>
                     <td>所属分类：</td>
                     <td>
                     	<select id="class1" onchange="ch2(this.value)">
                     		<option selected="selected" value="0">--请选择--</option>
                     	</select>
                     	<select name="cate_id" id="class2">
                     		<option selected="selected" value="0">--请选择--</option>
                     	</select><span id="classt1"></span>
                     </td>
                 </tr>
                 <tr>
                     <td>商品图片1：</td>
                     <td><input type="file" name="pic1" id="pic"/><span id="pict1"></span></td>
                 </tr>
                 <tr>
                     <td>商品图片2：</td>
                     <td><input type="file" name="pic2" /></td>
                 </tr>
                 <tr>
                     <td>商品图片3：</td>
                     <td><input type="file" name="pic3" /></td>
                 </tr>
                 <tr>
                     <td>商品图片4：</td>
                     <td><input type="file" name="pic4" /></td>
                 </tr>

                 <tr>
                     <td>商品库存：</td>
                     <td><input type="text" name="good_count" id="count1"/><span id="countt1"></span></td>
                 </tr>

                 <tr>
                     <td>商品价格：</td>
                     <td><input type="text" name="good_sale" id="sale1"/><span id="salet1"></span></td>
                 </tr>
                 <tr>
                     <td>价格折扣：</td>
                     <td><input type="text" name="sale_dz" id="dz1"/><span id="dzt1"></span></td>
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
