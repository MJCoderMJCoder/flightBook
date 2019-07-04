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

<!--[if lte IE 6]>
<link type="text/css" rel="stylesheet" href="Css/calendarIE6.css" />
<![endif]--> 
<!--[if gte IE 7]>
<link type="text/css" rel="stylesheet" href="Css/calendar.css" />
<![endif]--> 
<!--[if !IE]> 
<link type="text/css" rel="stylesheet" href="Css/calendar.css" />
<![endif]-->

<script type="text/javascript" src="Javascript/calendar.js" ></script>  
<script type="text/javascript" src="Javascript/calendar-zh.js" ></script>
<script type="text/javascript" src="Javascript/calendar-setup.js"></script>
<script type="text/javascript" src="Javascript/ShouHu.js"></script>
</head>

<body background="Img/016.png">
<div id="Head">
  <div id="TicketHead">
    <div id="JpLeft">
      <div id="JpLeftTop"><strong>航班详情</strong></div>
      <div id="JpLeftCenter">
          <table width="490" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="490" height="35" valign="middle"><table width="496" border="0" cellpadding="0" cellspacing="0">
             <tr>
                <td height="35" colspan="4" align="right" valign="middle">&nbsp;</td>
                </tr>
              <tr>
                <td width="78" height="35" align="right" valign="middle"><strong>航班号:</strong></td>
                <td width="170" height="35" align="center" valign="middle">HK508</td>
                <td width="78" height="35" align="right" valign="middle"><strong>提示:</strong></td>
                <td width="170" height="35" align="center" valign="middle">限乘当日当次机</td>
                </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>出发日期:</strong></td>
                <td width="170" height="35" align="center" valign="middle">2015年01月15号</td>
                <td width="78" height="35" align="right" valign="middle"><strong>时间:</strong></td>
                <td width="170" height="35" align="center" valign="middle"><strong>11:44&nbsp;AM</strong></td>
              </tr>
                
              <tr>
                <td height="35" align="right" valign="middle"><strong>始发地:</strong></td>
                <td width="170" height="35" align="center" valign="middle">太原</td>
                <td width="78" height="35" align="right" valign="middle"><strong>目的地:</strong></td>
                <td width="170" height="35" align="center" valign="middle">北京</td>
              </tr>
                 <tr>
                <td height="35" colspan="4" align="right" valign="middle">&nbsp;</td>
                </tr>
              <tr>
                <td height="70" colspan="4"><!---->
                  <table width="496" border="0" cellpadding="0" cellspacing="0" id="Fly01">
                    <tr>
                      <td width="94" height="35" align="center" valign="middle"></td>
                      <td width="204" height="35" align="center" valign="middle"><form id="form2" name="form2" method="post" action="exit.jsp">
                        <input type="submit" name="exit" id="exit" value="退票" />
                      </form></td>
                      <td width="198" height="35" align="center" valign="middle">
                        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
                      </td>
                    </tr>
                  </table>
                  <!---->
                  <!----></td>
              </tr>
            </table></td>
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