<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../css/Register.css"/>
<script type="text/javascript" src="../MyJq/jquery-1.8.1.js"></script>
<script type="text/javascript" src="../Js/Register.js"></script>
<title>用户注册</title>
</head>
<body>
<iframe class="iframe_head" scrolling="no" src="HomePageHead.jsp"></iframe>
    <div class="body">
    <div class="body_left">
        	<form action="user?action=register" method="post" enctype="multipart/form-data">
            	<table class="left_t1" id="left_t1_font">
                	<tr>
                    	<td align="right" width="100px">昵称：</td>
                        <td width="150px"><input type="text" name="user_name" id="name1"/></td>
                        <td id="namet1">汉字或字母</td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">登录名：</td>
                        <td><input type="text" name="user_login" id="user1"/></td>
                        <td align="left" id="usert1">(可包含0-9、a-z和下划线)</td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">密码：</td>
                        <td><input type="password" name="user_pwd" id="password1"/></td>
                        <td align="left" id="passwordt1">(至少包含6个字符)</td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">再次输入密码：</td>
                        <td><input type="password" id="password2"/></td>
                        <td id="passwordt2"></td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">手机号码：</td>
                        <td><input type="text" name="user_phone" id="phone1"/></td>
                        <td align="left" id="phonet1"></td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">电子邮箱：</td>
                        <td><input type="text" name="user_email" id="email1"/></td>
                        <td align="left" id="emailt1">(必须包含&#64;字符)</td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">性别：</td>
                        <td colspan="2"><input type="radio" name="user_sex" checked="checked" value="男"/><img src="../images/Male.gif"/>男
                        	<input type="radio" name="user_sex" value="女"/><img src="../images/Female.gif"/>女
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">头像：</td>
                        <td colspan="2"><input type="file" name="user_photo" id="portrait1"/></td>
                        <td id="photot1"></td>
                        <td></td>
                    </tr>
                    <tr>
                    	<td align="right">爱好：</td>
                        <td colspan="2"><input type="checkbox" name="user_hobby" id="user_hobby1" value="运动"/>运动<input type="checkbox" name="user_hobby" id="user_hobby2" value="聊天"/>聊天<input type="checkbox" name="user_hobby" id="user_hobby3" value="玩游戏"/>玩游戏</td>
                     	<td id="hobbyt1"></td>
                     	<td></td>
                    </tr>
                    <tr>
                    	<td align="right">出生日期：</td>
                        <td colspan="2" id="birthday">
                        	<select name="user_birthday1" id="birthday1">
                        		<option selected="selected" value="null">选择年份</option>
                                <option>1990</option>
                                <option>1991</option>
                                <option>1992</option>
                                <option>1993</option>
                                <option>1994</option>
                            </select>年
                            <select name="user_birthday2" id="birthday2">
                        		<option value="null">选择月份</option>
                                <option selected="selected">01</option>
                                <option>02</option>
                                <option>03</option>
                                <option>11</option>
                                <option>12</option>
                            </select>月
                            <select name="user_birthday3" id="birthday3">
                        		<option selected="selected" value="null">选择日期</option>
                                <option>01</option>
                                <option>02</option>
                                <option>03</option>
                                <option>04</option>
                                <option>05</option>
                            </select>日
                        </td>
                        <td id="birthdayt1"></td>
                    </tr>
                    <tr>
                    	<td align="center" colspan="3">
                        	<input type="image" type="submit" src="../images/submit.gif"/>
                        	<input type="image" type="reset" src="../images/reset.gif"/>
                        </td>
                    </tr>
                </table>
        </form>
      </div>
        <div class="body_right">
        	<table class="right_t1">
            	<tr>
                	<td width="35px;"><img src="../images/read.gif"/></td>
                    <td style="vertical-align:bottom; font-weight:bold; font-size:13px;">阅读贵美网服务协议</td>
                </tr>
                <tr>
                	<td colspan="2">
                    	<textarea name="textarea" readonly="readonly" class="textarea1" wrap="physical">1、本协议由您与贵美平台的经营者共同缔结，本协议具有合同效力。贵美平台的经营者是指法律认可的经营贵美平台网站的责任主体，本协议项下各贵美平台的经营者可单称或合称为“贵美”。有关贵美平台经营者的信息请查看各贵美平台首页底部公布的公司信息和证照信息。
2、除另行明确声明外，贵美平台服务包含任何贵美及其关联公司提供的基于互联网以及移动网的相关服务，且均受本协议约束。如果您不同意本协议的约定，您应立即停止注册/激活程序或停止使用贵美平台服务。
3、本协议内容包括协议正文、 法律声明、《贵美规则》及所有贵美已经发布或将来可能发布的各类规则、公告或通知（以下合称“贵美规则”或“规则”）。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。
4、贵美有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行变更公告，无需另行单独通知您。变更后的协议和规则一经在网站公布后，立即或在公告明确的特定时间自动生效。若您在前述变更公告后继续使用贵美平台服务的，即表示您已经阅读、理解并接受经修订的协议和规则。若您不同意相关变更，应当立即停止使用贵美平台服务。
                        </textarea></td>
                </tr>
            </table>
        </div>
    </div>
    <iframe src="HomePageFoot.jsp" scrolling="no" class="iframe_foot"></iframe>
</body>
</html>
