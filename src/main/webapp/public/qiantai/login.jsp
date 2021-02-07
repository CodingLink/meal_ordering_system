<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>用户登录</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="" name=keywords />
<meta content="" name=description />
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<script type="text/javascript" src="js/common.js"></script>

   <script language="JavaScript">
   function login11()
	{
		
		if (document.form1.name.value == "" ) 
		{
			alert("请输入用户名!");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.pwd.value == ""  )  
		{
			alert("请输入密码!");
			document.form1.pwd.focus();
			return false;
		}
	}
</script>

<body >
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top">
  
    
 <jsp:include flush="false" page="top.jsp"/>
    
    </td>
  </tr>
  <tr >
  <td height="20"></td>
  
</tr>
  
  <tr  >
    <td align="center" valign="center" height="450" >
    <div id='pdv_391' class='pdv_class'  title='会员登录' style='width:681px; height:300px; top:0px; left:0px; z-index:50'>
      <div id='spdv_391' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
        <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:#fff;">
          <div style="height:25px;margin:1px;display:none;background:;">
            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:"> 会员登录 </div>
            <div style="float:right;margin-right:10px;display:none"> <a href="-1" style="line-height:25px;color:">更多</a></div>
          </div>
          <div style="padding:0px">
            <script type="text/javascript" src="js/login.js"></script>
            <link href="../member/templates/css/memberlogin_c.css" rel="stylesheet" type="text/css" />
            <div style="width:600px; height:210px;text-align:left;border:1px #f59d5e solid; background-color:#fdebd5;padding:30px;margin:0px">
              <div style="width:210px;float:left;text-align:left;border:1px #f59d5e solid;padding:20px;background-color:#ffffff;">
                <form method="post" action="<c:url value="/users/login"/>" name="form1" onSubmit="return login11()">
                  <div  id="notice" class="noticediv"></div>
                  <table width="100%"  border="0" cellspacing="0" cellpadding="3">
                    <tr>
                      <td>登录账号</td>
                      <td ><input type="text" id="muser" name="name"  class="input" maxlength="20" style="width:135px" /></td>
                    </tr>
                    <tr>
                      <td>登录密码</td>
                      <td><input type="password" id="mpass" name="pwd" class="input"  style="width:135px" maxlength="20" /></td>
                    </tr>
                    <tr>
                      <td height="40"><input name="act" type="hidden" id="act" value="memberlogin" /></td>
                      <td height="40" ><input name="imageField" type="image" src="images/denglu.gif" border="0" />
                        <a href="reg.jsp" style="padding-left:1px"><img src="images/zhuce.gif" alt="" width="40" height="19" border="0" /></a></td>
                    </tr>
                  </table>
                </form>
              </div>
              <div style="width:290px;padding:20px;float:right;text-align:left;border:1px #f59d5e solid;background-color:#ffffff;">
                <ul style="margin:0px;padding:0px">
                  <li style=" list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px"> 如果您已经是会员，请在左侧登录 </li>
                  <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px"> 如果您还没有注册会员，<a href="reg.jsp" target="_self"><font color="#FF6600">点这里注册新会员</font></a></li>
                  <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px"> 如果您忘记了密码， <a href="../member/lostpass.php" ><font color="#99CC00">点这里重设一个密码</font></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div></td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
  </tr>
  <tr>
    <td height="50" align="center" valign="middle">&nbsp; 
   
        <jsp:include flush="fasle" page="copyright.jsp"/>
    </td>
  </tr>
  
</table>


 
</body>
</html>
