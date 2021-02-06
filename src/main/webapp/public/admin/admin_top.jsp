<%@page import="com.example.meal_ordering_system.entity.Admin"%>
<%@page import="java.util.*"%>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<title>网上订餐后台- 管理页面</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link href="css/top.css" rel="stylesheet" type="text/css">

</head>
<body leftmargin="0" topmargin="0">
	<%
		Admin admin = (Admin) session.getAttribute("admin_session");
		String name = "";
		if (admin == null) {
			name = "匿名";
		} else {
			name = admin.getName();
		}
	%>
	<div id="maindiv">
		<div id="logodiv"></div>
		<div id="exitdiv">
			<a href="/admin/logout"><img src="${pageContext.request.contextPath}/public/admin/images/out.gif" alt="安全退出" ></a>
		</div>
		<div id="textdiv">
			管理员：<strong><%=name%></strong> 您好，感谢登陆使用！
		</div>
	</div>
</body>
</html>