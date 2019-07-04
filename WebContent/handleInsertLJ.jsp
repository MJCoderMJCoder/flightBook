<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>508航空</title>
<meta name="keywords" content="508航空机票预定系统" />
<meta name="description" content="旅行社输入预定机票的旅客信息，为旅客安排航班" />
<!-- IE8用IE7进行渲染，使网页在IE8下正常显示 -->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="Css/Style.css" rel="stylesheet" type="text/css" />

<link type="text/css" rel="stylesheet" href="Css/calendarquery.css" />


</head>

<body background="Img/016.png">
<div id="Head">
  <div id="TicketHead">
    <div id="JpLeft">
      <div id="JpLeftTop">订票成功</div>
      <div id="JpLeftCenter">
<table width="100%">
  <tr>
    <th width="8%">姓名</th>
    <th width="5%">性别</th>
    <th width="21%">工作单位</th>
    <th width="16%">身份证号</th>
    <th width="12%">手机</th>
    <th width="8%">始发地</th>
    <th width="8%">目的地</th>
    <th width="17%">出发日期</th>
    <th width="5%">&nbsp;</th>
  </tr>
  <tr>
    <td align="center" valign="middle">刘杰</td>
    <td align="center" valign="middle">男</td>
    <td align="center" valign="middle">山西省文水县</td>
    <td align="center" valign="middle">141121199303010055</td>
    <td align="center" valign="middle">15364948902</td>
    <td align="center" valign="middle">太原</td>
    <td align="center" valign="middle">北京</td>
    <td align="center" valign="middle">2015年01月15号</td>
    <td align="center" valign="middle"><form id="form1" name="form1" method="post" action="detail.jsp">
      <input type="submit" name="detail" id="detail" value="详情" />
    </form></td>
</tr> 
</table>
<table width="100%">
  <tr>
    <td align="center" valign="middle"><form id="back" name="back" method="post" action="index.jsp">
      <input type="submit" name="back" id="back" value="返回首页" />
    </form></td>
    <td align="center" valign="middle"><form id="insert" name="insert" method="post" action="insert.jsp">
      <input name="insert" type="submit" id="insert" value="预订机票" />
    </form></td>
  </tr>
</table>
<div id="apDiv1"><script language="javascript">SetCity01('Ctiy01','apDiv1','True');</script></div>
        <div id="apDiv2"><script language="javascript">SetCity01('Ctiy02','apDiv2','False');</script></div>
      </div>
      <div id="JpLeftBottom"></div>
    </div>
  </div>
</div>
</body>
</html>