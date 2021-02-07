<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>公告通知</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<script type="text/javascript" src="js/common.js"></script>

 
<body style='background:transparent'>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top">
  
    
  <jsp:include flush="false" page="top.jsp"/>
    
    </td>
  </tr>
  <tr >
  <td height="50"></td>
  
</tr>
  
  <tr>
    <td align="center" valign="top" height="400">
    
    <table border="0" cellspacing="0"  width="100%">

		<tr>
		  <td  align="center" vlign="top"  >
			 <strong><span style="font-family: Helvetica, sans-serif;font-size: 20px;">${notice.name}</span></strong>
			 <br>
			 <span style=" font-size: 10px;">${notice.times}</span>
		  </td>
		</tr>
		<tr>
		  <td  align="left" vlign="top" >
			
             <span style=" font-size: 14px;"><br>&nbsp;&nbsp;&nbsp;&nbsp;${notice.content} </span><br><br>
		  </td>
		</tr>
		<tr>
		  <td  align="center"  >
			 <a href="<c:url value="/menus/qiantai/allMenus"/>" target="_self">
			 <span style="font-family: Helvetica, sans-serif;font-size: 16px;">
			     返回
			 </span></a>
		  </td>
		</tr>
   </table>
 
 
    
    
    
     </td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
  </tr>
  <tr>
    <td height="50" align="center" valign="middle">&nbsp; 
   
        <jsp:include flush="false" page="copyright.jsp"/>
    </td>
  </tr>
  
</table>


 
</body>
</html>
