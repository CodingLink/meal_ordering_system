<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta content="" name=keywords />
<meta content="" name=description />
<link href="${pageContext.request.contextPath}/public/qiantai/css/common.css" rel="stylesheet" type="text/css" />

</head>
<body style='background:transparent'>


<table width="243" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
  <tr>
    <td valign="top"><div id='pdv_' class='pdv_class'  title='网站公告' style='width:243px; top:0px; left:0px; z-index:3'>
      <div id='spdv_3603' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
        <div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/640/images/left.jpg) repeat-y">
          <div style="height:100%;background:url(images/right.jpg) right repeat-y">
            <div style="height:43px;background:url(images/bg.jpg) 0px 0px no-repeat">
              <div style="float:left;font:bold 16px/43px 'Microsoft YaHei','SimSun',Arial,Sans-Serif;text-align:left;padding-left:50px;color:#feab43;"> 餐厅公告 </div>
              <div style="float:right;width:60px;height:43px;text-align:right;background:url(images/bg.jpg) -840px 0px no-repeat"> <a href="news/class/" style="font:12px/43px simsun;color:#505050;margin-right:12px;display:inline">更多&gt;&gt;</a></div>
            </div>
            <div style="margin:0px 3px;padding:10px;">
              <link href="${pageContext.request.contextPath}/public/qiantai/css/newslist_time2.css" rel="stylesheet" type="text/css" />
              <ul class="newslist_time2">
                <li class="newslist_time2">
                  <div class="time">09/27</div>
                  <a href="news/html/?297.html" target="_self" class="newslist_time2"   >金秋来临，菜品赠品大升级</a></li>
                <li class="newslist_time2">
                  <div class="time">09/27</div>
                  <a href="news/html/?296.html" target="_self" class="newslist_time2"   >积分换电影票，奖品大变样</a></li>
                <li class="newslist_time2">
                  <div class="time">09/27</div>
                  <a href="news/html/?295.html" target="_self" class="newslist_time2"   >精品盖浇饭上市喽</a></li>
                <li class="newslist_time2">
                  <div class="time">09/27</div>
                  <a href="news/html/?294.html" target="_self" class="newslist_time2"   >10月团体订餐优惠活动开始</a></li>
                <li class="newslist_time2">
                  <div class="time">09/27</div>
                  <a href="news/html/?293.html" target="_self" class="newslist_time2"   >节日放假通知</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div style="margin-top:-10px;height:10px;line-height:10px;background:url(images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
        <div style="float:right;margin-top:-10px;width:10px;height:10px;line-height:10px;background:url(images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>
      </div>
    </div></td>
  </tr>
  <tr>
    <td  height="10">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><div id='pdv_3614' class='pdv_class'  title='我的餐车' style='width:243px; top:0px; left:0px; z-index:2'>
      <div id='spdv_3614' class='pdv_content' style='overflow:visible;width:100%;'>
        <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
          <div style="height:25px;margin:1px;display:none;background:;">
            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:"> 我的餐车 </div>
            <div style="float:right;margin-right:10px;display:none"> <a href="-1" style="line-height:25px;color:">更多</a></div>
          </div>
          <div style="padding:0px">
            <link href="css/dingcanche.css" rel="stylesheet" type="text/css" />
            <script src="js/dingcanall.js" type="text/javascript"></script>
            <script src="js/dingcansubmit.js" type="text/javascript"></script>
            <div id="dingcanche">
              <div id="dingcanche2">
                <div id="dingcanche_top">
                  <div id="dingcanche_top_left">我的餐车</div>
                  <div id="dingcanche_top_right">&nbsp;</div>
                </div>
                <div style="padding:px;margin-bottom:10px;">
                  <div style="height:13px;background:#f6f6f6;margin:0px 3px 1px 3px;">
                    <div style="float:left;padding-left:10px;">名称</div>
                    <div style="float:right;padding-right:10px;"><a href="http://www.baidu.com" target="_self">取消</a></div>
                    <div style="float:right;padding-right:10px;">份数</div>
                    <div style="float:right;padding-right:10px;">单价</div>
                  </div>
                
                  
                  <div id="dcinfo" style="margin:0px 3px 1px 3px;"></div>
                  <div style="height:24px;margin:5px 3px 1px 3px;">
                    <div style="float:left;line-height:24px;padding-left:25px;">小&nbsp;&nbsp;计：</div>
                    <div style="float:right;line-height:24px;padding-right:15px;"><font id="allnums" style="color:#ff0000;">0</font>份</div>
                    <div style="float:right;line-height:24px;padding-right:30px;"><font id="cpprice" style="color:#ff0000;">0</font>元</div>
                  </div>
                  <div style="height:26px;margin:5px 3px 1px 3px;">
                    <div id="cartsubmit" style="float:left;padding-left:90px;cursor:pointer;"><a href="http://www.baidu.com"><img src="images/canche_submit.gif" border="0" /></a></div>
                    <div style="float:left;padding-left:10px;cursor:pointer;" onClick="delAll();"><a href="http://www.baidu.com"><img src="images/quxiao2.gif" border="0" /></a></div>
                  </div>
                </div>
              </div>
            </div>
            <div id="dingcanche_bottom_left">&nbsp;</div>
            <div id="dingcanche_bottom_right">&nbsp;</div>
            <input type="hidden" name="modnums_b" id="modnums_b" value="" />
            <script>
$("div.cpline_d:even").addClass("cpline_s");
      </script>
          </div>
        </div>
      </div>
    </div></td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
  </tr>
  
  
  <tr>
    <td   valign="top"><div id='pdv_3613' class='pdv_class'  title='本周菜单' style='width:243px; top:0px; left:0px; z-index:5'>
      <div id='spdv_3613' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
        <div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
          <div style="height:25px;margin:1px;display:none;background:;">
            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:"> 本周菜单 </div>
            <div style="float:right;margin-right:10px;display:none"> <a href="-1" style="line-height:25px;color:">更多</a></div>
          </div>
          <div style="padding:0px">
            <link href="${pageContext.request.contextPath}/public/qiantai/css/dingcanweekmenu.css" rel="stylesheet" type="text/css" />
            <div id="dingcanweekmenu">
              <div id="dingcanweekmenu2">
                <div id="dingcanweekmenu_top">
                  <div id="dingcanweekmenu_top_left">销售排行榜</div>
                  <div id="dingcanweekmenu_top_right">&nbsp;</div>
                </div>
                <div style="padding:px;">
                  <div class="dingcanweekmenuinfo">
                    <link href="${pageContext.request.contextPath}/public/qiantai/css/newslist_time2.css" rel="stylesheet" type="text/css" />
                    <li class="newslist_time2">
                      <div class="time">09/27</div>
                      <a href="news/html/?297.html" target="_self" class="newslist_time2"   >金秋来临，菜品赠品大升级</a></li>
                    <li class="newslist_time2">
                      <div class="time">09/27</div>
                      <a href="news/html/?297.html" target="_self" class="newslist_time2"   >金秋来临，菜品赠品大升级</a>                  </li>
                  </div>
                </div>
              </div>
            </div>
            <div id="dingcanweekmenu_bottom_left"></div>
            <div id="dingcanweekmenu_bottom_right">&nbsp;</div>
          </div>
        </div>
      </div>
    </div></td>
  </tr>

</table>
</body>
</html>
