<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/Help-1.css"/>
<script type="text/javascript">  
function openShutManager(oSourceObj,oTargetObj,shutAble,oOpenTip,oShutTip){  
var sourceObj = typeof oSourceObj == "string" ? document.getElementById(oSourceObj) : oSourceObj;  
var targetObj = typeof oTargetObj == "string" ? document.getElementById(oTargetObj) : oTargetObj;  
var openTip = oOpenTip || "";  
var shutTip = oShutTip || "";  
if(targetObj.style.display!="none"){  
   if(shutAble) return;  
   targetObj.style.display="none";  
   if(openTip  &&  shutTip){  
    sourceObj.innerHTML = shutTip;   
   }  
} else {  
   targetObj.style.display="block";  
   if(openTip  &&  shutTip){  
    sourceObj.innerHTML = openTip;   
   }  
}  
}  
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
	<div class="help_1">
    	<table class="help_t1">
        	<tr>
            	<td height="50px"><p style="font-weight:bold;font-size:25px">知识堂首页&nbsp;&gt;&gt;&nbsp;注册&amp;认证</p></td>
            </tr>
            <tr>
            	<td height="30px"><hr style="border:solid #F6C 1px;"/></td>
            </tr>
            <tr>
            	<td height="40px"><p>享受贵美网免费网上交易乐趣，并且在超人气的社区尽情交流您的网上购物经验，您需要先注册成为贵美的会员，具体的步骤如下：</p></td>
            </tr>
            <tr>
            	<td height="40px"><img src="../images/reg_step.jpg"/></td>
            </tr>
            <tr>
            	<td height="10px"></td>
            </tr>
            <tr>
            	<td height="30px">
                	<p>
                    	<input type="image" onclick="openShutManager(this,'box')" src="../images/list_icon.gif"/>
                    	<a href="#" onclick="openShutManager(this,'box')">如何激活会员名？</a>
                    </p>         	
                </td>
            </tr>
            <tr>
            	<td>
                	<p id="box" style="display:none">&nbsp;&nbsp;&nbsp;我们会通过邮箱验证邮件激活您的会员账户。</p>
                </td>
            </tr>
            <tr>
            	<td height="30px">
                	<p>
                    	<input type="image" onclick="openShutManager(this,'box2')" src="../images/list_icon.gif"/>
                    	<a href="##" onclick="openShutManager(this,'box2')">如何注册贵美会员？</a>
                    </p>
                </td>
            </tr>
            <tr>
            	<td>
                	<p id="box2" style="display:none">&nbsp;&nbsp;&nbsp;请在首页点击注册进入注册页面。</p>
                </td>
            </tr>
            <tr>
            	<td height="30px">
                	<p>
                    	<input type="image" onclick="openShutManager(this,'box3')" src="../images/list_icon.gif"/>
                    	<a href="###" onclick="openShutManager(this,'box3')">注册时密码设置有什么要求？</a>
                    </p>
                </td>
            </tr>
            <tr>
            	<td>
                	<p id="box3" style="display:none">&nbsp;&nbsp;&nbsp;至少包含6个字符，为了您的账户安全，密码越长越好。</p>
                </td>
            </tr>
            <tr>
            	<td height="30px">
                	<p>
                    	<input type="image" onclick="openShutManager(this,'box4')" src="../images/list_icon.gif"/>
                    	<a href="####" onclick="openShutManager(this,'box4')">贵美认证</a>
                    </p>
                </td>
            </tr>
            <tr>
            	<td>
                	<p id="box4" style="display:none">&nbsp;&nbsp;&nbsp;美女客服会联系您。</p>
                </td>
            </tr>
            <tr>
            	<td height="30px">
                	<p>
                    	<input type="image" onclick="openShutManager(this,'box5')" src="../images/list_icon.gif"/>
                    	<a href="####" onclick="openShutManager(this,'box5')">为什么校验码明明是对的，却提示我输入错误？</a>
                    </p>
                </td>
            </tr>
            <tr>
            	<td>
                	<p id="box5" style="display:none">&nbsp;&nbsp;&nbsp;刷新再试一次。</p>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
