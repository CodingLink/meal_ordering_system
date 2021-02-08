<%@page import="com.example.meal_ordering_system.entity.ShoppingCart"%>
<%@page import="com.example.meal_ordering_system.entity.Notice"%>
<%@page import="com.example.meal_ordering_system.dao.NoticeDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.example.meal_ordering_system.dao.MenusDao"%>
<%@page import="com.example.meal_ordering_system.entity.Menus"%>
<%@ page import="com.example.meal_ordering_system.service.MenusService" %>
<%@ page import="com.example.meal_ordering_system.service.impl.MenusServiceImpl" %>
<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>-阿婆私房菜</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="${pageContext.request.contextPath}/public/qiantai/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/qiantai/js/base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/qiantai/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/qiantai/js/form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/qiantai/js/blockui.js"></script>

</head>



<body style='background: transparent'>

	<table width="900" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="left" valign="top"><jsp:include flush="false"
					page="top.jsp" /></td>
		</tr>
		<tr>
			<td height="30"></td>

		</tr>

		<tr>
			<td align="left" valign="top"><table width="100%" border="0"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="59%" align="left" valign="top"><div id='pdv_3606'
								class='pdv_class' title=''
								style='width: 648px; top: 0px; left: 0px; z-index: 12'>
								<div id='spdv_3606' class='pdv_content'
									style='overflow: visible; width: 100%;'>
									<div class="pdv_border"
										style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
										<!-- <div style="height:25px;margin:1px;display:none;background:;">
                <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:"></div>
                <div style="float:right;margin-right:10px;display:none"> <a href="-1" style="line-height:25px;color:">更多</a> </div>
              </div>-->
										<div style="padding: 0px">
											<link href="${pageContext.request.contextPath}/public/qiantai/css/dingcanall.css" rel="stylesheet"
                                                  type="text/css" />
											<script src="${pageContext.request.contextPath}/public/qiantai/js/dingcanall.js" type="text/javascript"></script>

											<div id="dingcanall2">

												<div style="margin-top: 0px; padding: px;">
													<div id="mm_01" class="dingcanall_connow">
														<table>
															<%
																int maxrow = 2;/*每一行显示的个数*/
																int rowcount = 0;/*总行数*/
																int currentrowcount = 0;/*当前行的实际个数*/
																int currentrow = 0;/*当前行*/
																int currentrs = 0;/*当前记录数*/
																int rscount = 0;/*实际记录数*/
																//menuList=queryALL
																List<Menus>menusList=(List<Menus>)request.getAttribute("menusList");

																if (menusList != null) {
																	rscount = menusList.size();
																	if (rscount % maxrow == 0) {
																		rowcount = rscount / maxrow;
																	} else {
																		rowcount = rscount / maxrow + 1;
																	}
																	for (currentrow = 0; currentrow < rowcount; currentrow++) {
															%>

															<tr>
																<%
																	if ((currentrow + 1) == rowcount && rscount % maxrow != 0) {
																				currentrowcount = rscount % maxrow;
																			} else {
																				currentrowcount = maxrow;
																			}

																			for (currentrs = currentrow * maxrow; currentrs < currentrow
																					* maxrow + currentrowcount; currentrs++) {
																				Menus menus = menusList.get(currentrs);
																%>
																<td style="margin-top: 10px;">
																	<div>
																		<table>
																			<tr>
																				<td rowspan="5" class="bookPic"><img
																					src="${pageContext.request.contextPath}/public/<%=menus.getImgpath()%>"
																					style="border: 1px solid #300;" /></td>
																				<td><span>菜名:</span></td>
																				<td><span><strong><%=menus.getName()%></strong></span></td>
																			</tr>
																			<tr>
																				<td><span>市场价格:</span></td>
																				<td><span><%=menus.getPrice()%></span></td>
																			</tr>
																			<tr>
																				<td><span>会员价格:</span></td>
																				<td><span><strong style="color: red;"><%=menus.getPrice1()%></strong></span></td>
																			</tr>
																			<tr>
																				<td><span>配料:</span></td>
																				<td><span><%=menus.getBurden()%></span></td>
																			</tr>
																			<tr>
																				<td><span>菜品类型:</span></td>
																				<td><span><%=menus.getTypeid()%></span></td>
																			</tr>
																			<tr>
																				<td colspan="2" style="height: 40px;"><a
																					href="/orders/order_addshoppingcar?menuId=<%=menus.getId()%>"><img
                                                                                        src="${pageContext.request.contextPath}/public/qiantai/images/cart.png" border="0" alt="" /></a></td>
																				<td></td>
																			</tr>
																		</table>
																	</div>
																</td>
															    <%
																	}
																%>
															</tr>
															<%
																}
																}
															%>
														</table>
													</div>


												</div>

											</div>
										</div>

										<div id="dingcanall_bottom_left">&nbsp;</div>
										<div id="dingcanall_bottom_right">&nbsp;</div>
										<input type="hidden" name="picw" id="picw" value="150" /> <input
											type="hidden" name="pich" id="pich" value="140" /> <input
											type="hidden" name="fittype" id="fittype" value="auto" />
									</div>
								</div>
							</div>
							</div></td>
						<td width="41%" align="right" valign="top"><table width="243"
								border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td></td>
								</tr>
								<tr>
									<td valign="top"><div id='pdv_' class='pdv_class'
											title='网站公告'
											style='width: 243px; top: 0px; left: 0px; z-index: 3'>
											<div id='spdv_3603' class='pdv_content'
												style='overflow: hidden; width: 100%; height: 100%'>
												<div class="pdv_border"
													style="border: 0px; height: 100%; padding: 0; margin: 0; background: url(base/border/640/images/left.jpg) repeat-y">
													<div
														style="height: 100%; background: url(../public/qiantai/images/right.jpg) right repeat-y">
														<div
															style="height: 43px; background: url(images/bg.jpg) 0px 0px no-repeat">
															<div
																style="float: left; font: bold 16px/43px 'Microsoft YaHei', 'SimSun', Arial, Sans-Serif; text-align: left; padding-left: 50px; color: #feab43;">
																餐厅公告</div>
															<div
																style="float: right; width: 60px; height: 43px; text-align: right; background: url(images/bg.jpg) -840px 0px no-repeat">
																<a href="news/class/"
																	style="font: 12px/43px simsun; color: #505050; margin-right: 12px; display: inline">更多&gt;&gt;</a>
															</div>
														</div>
														<div style="margin: 0px 3px; padding: 10px;" align="left">
															<link href="${pageContext.request.contextPath}/public/qiantai/css/newslist_time2.css" rel="stylesheet"
                                                                  type="text/css" />

															<ul class="newslist_time2">
																<c:forEach items="${notices}" var="notice">
																<li class="newslist_time2"><div class="time">${notice.times}</div>
																	<a
																	href="<c:url value="/notice/queryByIdtoQiantai?id=${notice.id}"/>"
																	class="newslist_time2">${notice.name}</a></li>
																</c:forEach>
															</ul>


														</div>
													</div>
												</div>
												<div
													style="margin-top: -10px; height: 10px; line-height: 10px; background: url(images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
												<div
													style="float: right; margin-top: -10px; width: 10px; height: 10px; line-height: 10px; background: url(images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>
											</div>
										</div></td>
								</tr>
								<tr>
									<td height="10">&nbsp;</td>
								</tr>
								<tr>
									<td valign="top">
										<div id='pdv_3614' class='pdv_class' title='我的餐车'
											style='width: 243px; top: 0px; left: 0px; z-index: 2'>
											<div id='spdv_3614' class='pdv_content'
												style='overflow: visible; width: 100%;'>
												<div class="pdv_border"
													style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
													<div
														style="height: 25px; margin: 1px; display: none; background:;">
														<div
															style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
															我的餐车</div>
														<div
															style="float: right; margin-right: 10px; display: none">
															<a href="-1" style="line-height: 25px; color:">更多</a>
														</div>
													</div>
													<div style="padding: 0px">
														<link href="${pageContext.request.contextPath}/public/qiantai/css/dingcanche.css" rel="stylesheet"
                                                              type="text/css" />
														<script src="${pageContext.request.contextPath}/public/qiantai/js/dingcanall.js" type="text/javascript"></script>
														<script src="${pageContext.request.contextPath}/public/qiantai/js/dingcansubmit.js" type="text/javascript"></script>
														<div id="dingcanche">
															<div id="dingcanche2">
																<div id="dingcanche_top">
																	<div id="dingcanche_top_left">我的餐车</div>
																	<div id="dingcanche_top_right">&nbsp;</div>
																</div>


																<div id="dcinfo" style="margin: 0px 3px 1px 3px;"></div>
																<table width="100%" border="0" cellspacing="0"
																	style="background: #fef0d3;">
																	<tr>
																		<td align="center">菜单名称</td>
																		<td align="center">单价</td>
																		<td align="center">数量</td>
																		<td align="center"></td>
																	</tr>
																	<%
																		float sum1 = 0.0f;
																		int sum2 = 0;
																		List<ShoppingCart> shoppingcar = (List<ShoppingCart>) session.getAttribute("shoppingcar");
																		if (shoppingcar!= null) {
																			for (int i = 0; i < shoppingcar.size(); i++) {
																				ShoppingCart sc=shoppingcar.get(i);
																				sum1 = sum1+sc.getPrice()*sc.getSums();
																				sum2 = sum2 +sc.getSums();
																	%>


																	<tr>
																		<td align="center"><%=sc.getName()%></td>
																		<td align="center"><%=sc.getPrice()%></td>
																		<td align="center"><%=sc.getSums()%></td>
																		<td align="center"><a
																			href="/orders/order_shoppingcardel?del=<%=i%>">取消</a></td>
																	</tr>
																	<%
																		}}
																	%>



																</table>



																<div style="height: 24px; margin: 5px 3px 1px 3px;">
																	<div
																		style="float: left; line-height: 24px; padding-left: 25px;">小&nbsp;&nbsp;计：</div>
																	<div
																		style="float: right; line-height: 24px; padding-right: 15px;">
																		<font id="allnums" style="color: #ff0000;"><%=sum2%></font>份
																	</div>
																	<div
																		style="float: right; line-height: 24px; padding-right: 30px;">
																		<font id="cpprice" style="color: #ff0000;"><%=sum1%></font>元
																	</div>
																</div>
																<div style="height: 30px; margin: 5px 3px 1px 3px;">
																	<table width="100%" border="0" cellspacing="0">
																		<tr>
																			<td align="center" width="40%"></td>
																			<td align="center" width="40%"><a
																				href="<c:url value="/orders/order_addshoppingcartoOrder"/>"><img
                                                                                    src="${pageContext.request.contextPath}/public/qiantai/images/canche_submit.gif" border="0" /></a></td>
																			<td align="center" width="40%"><a
																				href="/orders/order_addshoppingcartoOrder?remove=1"><img
                                                                                    src="${pageContext.request.contextPath}/public/qiantai/images/quxiao2.gif" border="0" /></a></td>
																		</tr>
																	</table>

																</div>
															</div>
														</div>
													</div>
													<div id="dingcanche_bottom_left">&nbsp;</div>
													<div id="dingcanche_bottom_right">&nbsp;</div>
													<input type="hidden" name="modnums_b" id="modnums_b"
														value="" />
													<script>
														$("div.cpline_d:even")
																.addClass(
																		"cpline_s");
													</script>
												</div>
											</div>
										</div>
										</div>

									</td>
								</tr>
								<tr>
									<td height="10">&nbsp;</td>
								</tr>
								<tr>
									<td valign="top"><div id='pdv_3613' class='pdv_class'
											title='本周菜单'
											style='width: 243px; top: 0px; left: 0px; z-index: 5'>
											<div id='spdv_3613' class='pdv_content'
												style='overflow: hidden; width: 100%; height: 100%'>
												<div class="pdv_border"
													style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
													<div
														style="height: 25px; margin: 1px; display: none; background:;">
														<div
															style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
															本周菜单</div>
														<div
															style="float: right; margin-right: 10px; display: none">
															<a href="-1" style="line-height: 25px; color:">更多</a>
														</div>
													</div>
													<div style="padding: 0px">
														<link href="${pageContext.request.contextPath}/public/qiantai/css/dingcanweekmenu.css" rel="stylesheet"
                                                              type="text/css" />
														<div id="dingcanweekmenu">
															<div id="dingcanweekmenu2">
																<div id="dingcanweekmenu_top">
																	<div id="dingcanweekmenu_top_left">销售排行榜</div>
																	<div id="dingcanweekmenu_top_right">&nbsp;</div>
																</div>
																<div style="padding: px;">
																	<div class="dingcanweekmenuinfo" align="left">
																		<link href="${pageContext.request.contextPath}/public/qiantai/css/newslist_time2.css" rel="stylesheet"
                                                                              type="text/css" />


																		<%
																			for (int i = 0; i < menusList.size(); i++) {
																				Menus menus1 = menusList.get(i);
																				String str = "";
																				str = "已销售" + menus1.getSums1() + "次";
																		%>


																		<li class="newslist_time2"><div class="time"><%=str%></div>
																			<a
																			href="show.jsp?id=<%=menus1.getId()%>"
																			class="newslist_time2"><%=menus1.getName()%></a></li>


																		<%
																			}
																		%>



																	</div>
																</div>
															</div>
														</div>
														<!--<div id="dingcanweekmenu_bottom_left"></div>
                    <div id="dingcanweekmenu_bottom_right">&nbsp;</div>-->
													</div>
												</div>
												<!-- </div>-->
											</div></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="10">&nbsp;</td>
		</tr>
		<tr>
			<td height="50" align="center" valign="middle"><jsp:include
					flush="false" page="copyright.jsp" /></td>
		</tr>

	</table>



</body>
</html>
