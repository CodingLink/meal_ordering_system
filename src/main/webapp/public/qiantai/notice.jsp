<%@page import="com.apsfc.po.Notice"%>
<%@page import="com.apsfc.dao.NoticeDao"%>
<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>����֪ͨ</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<script type="text/javascript" src="js/common.js"></script>

 
<body style='background:transparent'>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top">
  
    
  <jsp:include flush="fasle" page="top.jsp"/>
    
    </td>
  </tr>
  <tr >
  <td height="50"></td>
  
</tr>
  
  <tr>
    <td align="center" valign="top" height="400">
    
    <table border="0" cellspacing="0"  width="100%">
    
    <%
    
    int id = Integer.parseInt(request.getParameter("id"));
	NoticeDao ndao = new NoticeDao();
	Notice notice = new Notice();
	notice = ndao.getNoticeById(id);
	if (notice != null) {
	
     %>
		<tr>
		  <td  align="center" vlign="top"  >
			 <strong><span style="font-family: Helvetica, sans-serif;font-size: 20px;"><%=notice.getName() %></span></strong>
			 <br>
			 <span style=" font-size: 10px;"><%=notice.getTimes() %></span>
		  </td>
		</tr>
		<tr>
		  <td  align="left" vlign="top" >
			
             <span style=" font-size: 14px;"><br>&nbsp;&nbsp;&nbsp;&nbsp;<%=notice.getContent() %> </span><br><br>
		  </td>
		</tr>
		<tr>
		  <td  align="center"  >
			 <a href="index.jsp" target="_self">
			 <span style="font-family: Helvetica, sans-serif;font-size: 16px;">
			     ����
			 </span></a>
		  </td>
		</tr>	
	<%} %>	
   </table>
 
 
    
    
    
     </td>
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
