<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>网上订餐后台- 管理页面</title>
    <meta http-equiv=Content-Type content=text/html;charset=utf-8>
</head>
<frameset rows="64,*"  frameborder="0" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/public/admin/admin_top.jsp" noresize="noresize" frameborder="0" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
    <frameset cols="200,*" id="frame">
        <frame src="${pageContext.request.contextPath}/public/admin/admin_left.jsp" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
        <frame src="/menus/allMenus " name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
    </frameset>
</frameset>
<noframes>
    <body></body>
</noframes>
</html>
