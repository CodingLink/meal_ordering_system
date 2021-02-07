<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>配送说明</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<script type="text/javascript" src="js/common.js"></script>

 
<body >
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
    <td align="center" valign="top" height="250">
    
    <table border="0" cellspacing="0"  width="100%">
    
		<tr>
		  <td  align="center" vlign="top"  >
			 <strong><span style="font-family: Helvetica, sans-serif;font-size: 20px;">
			       配送指南
			 </span></strong>
			 <br>
		  </td>
		</tr>
		<tr>
		  <td  align="left" vlign="top" >
             <p style=" font-size: 14px;">
              <br><br>
             <strong>午餐时间：</strong><span style="color:#F00">11:00~14:00</span><br><br>
             <strong>晚餐时间：</strong><span style="color:#F00">17:00~21:00</span> <br><br>
             <strong>联系电话：</strong><span style="color:#F00">4008888</span> <br><br>
             <strong>联系人：</strong><span style="color:#F00">李经理</span> <br><br>
             <strong>注：</strong>
             </strong><span style="color:#F00">
                                             本店不支持网上付款，费用将有送餐人员代收，请自备零钱，谢谢合作！</span> <br><br>
             </p>
             
             <p style=" font-size: 14px;">
 
             &nbsp;&nbsp;&nbsp;&nbsp;订单经过本店客服人员确认后，将安排快递人员送餐。
                                            由于中午订餐人员比较多，请在本店正常营业时间外订餐，到时才能准时送达！
                                            周末进店人员比较多，暂不支持订餐，望见谅！<br><br>
             
             </p>
        
		  </td>
		</tr>
		<tr>
		  <td  align="center"  >
			 <a href="index.jsp" target="_self">
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
