<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="${pageContext.request.contextPath}/public/admin/js/prototype.lite.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/public/admin/js/moo.fx.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/public/admin/js/moo.fx.pack.js" type="text/javascript"></script>
	<link href="${pageContext.request.contextPath}/public/admin/css/left.css" rel="stylesheet" type="text/css" />
</head>

<body>

<table width="100%" height="280" border="0" cellpadding="0"
	   cellspacing="0" bgcolor="#EEF2FB">
	<tr>
		<td width="182" valign="top"><div id="container">
			<h1 class="type">
				<a href="javascript:void(0)">菜单管理</a>
			</h1>
			<div class="content">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><img src="${pageContext.request.contextPath}/public/admin/images/menu_topline.gif" width="182"
								 height="5" /></td>
					</tr>
				</table>
				<ul class="MM">
					<li><a href="<c:url value="/menus/toAddPage"/>" target="main">添加新菜单</a></li>
					<li><a href="<c:url value="/menus/allMenus"/>" target="main">菜单信息列表</a></li>
				</ul>
			</div>
			<h1 class="type">
				<a href="javascript:void(0)">菜单类别管理</a>
			</h1>
			<div class="content">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><img src="${pageContext.request.contextPath}/public/admin/images/menu_topline.gif" width="182"
								 height="5" /></td>
					</tr>
				</table>
				<ul class="MM">

					<li><a href="type_add.jsp" target="main">添加新类别</a></li>
					<li><a href="<c:url value="/types/queryAll"/>" target="main">类别信息列表</a></li>

				</ul>
			</div>
			<h1 class="type">
				<a href="javascript:void(0)">公告信息管理</a>
			</h1>
			<div class="content">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><img src="${pageContext.request.contextPath}/public/admin/images/menu_topline.gif" width="182"
								 height="5" /></td>
					</tr>
				</table>
				<ul class="MM">
					<li><a href="${pageContext.request.contextPath}/public/admin/notice_add.jsp" target="main">添加新通告</a></li>
					<li><a href="<c:url value="/notice/queryAll"/>" target="main">通告信息列表</a></li>
				</ul>
			</div>
			<h1 class="type">
				<a href="javascript:void(0)">销售订单管理</a>
			</h1>
			<div class="content">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><img src="${pageContext.request.contextPath}/public/admin/images/menu_topline.gif" width="182"
								 height="5" /></td>
					</tr>
				</table>
				<ul class="MM">
					<li><a href="<c:url value="/orders/ordergetall"/>" target="main">销售订单信息列表</a></li>
					<li><a href="<c:url value="/orders/order_search"/>" target="main">销售订单查询</a></li>
					<li><a href="<c:url value="/orders/order_statistic"/>"
						   target="main">本日销售额统计</a></li>
				</ul>
			</div>
		</div>

			<h1 class="type">
				<a href="${pageContext.request.contextPath}/public/admin/admin_update.jsp" target="main">系统用户管理</a>
			</h1>
			<h1 class="type">
				<a href="/admin/logout" target="main">注销退出</a>
			</h1></td>
	</tr>
</table>
<script type="text/javascript">
	var contents = document.getElementsByClassName('content');
	var toggles = document.getElementsByClassName('type');
	var myAccordion = new fx.Accordion(toggles, contents, {
		opacity : true,
		duration : 500
	});
	myAccordion.showThisHideOpen(contents[0]);
</script>

</body>
</html>
