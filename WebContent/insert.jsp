<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加旅客信息</title>
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
      <div id="JpLeftTop">预订机票</div>
      <div id="JpLeftCenter">
        <form id="insert" name="insert" method="post" action="handleinsert.jsp">
          <table width="490" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="490" height="35" valign="middle"><table width="496" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="31" colspan="2" align="center" valign="middle"><input name="radio" type="radio" id="radio" onclick="SHjs('Fly02','Fly01');" 
            value="radio" checked="checked" />
                  单程</td>
                <td height="31" colspan="2" valign="middle"><input type="radio" name="radio" id="radio3" 
            value="radio" onclick="SHjs('Fly01','Fly02');" />
                  往返</td>
                  </tr>
              <tr>
                <td width="78" height="35" align="right" valign="middle"><strong>姓&nbsp;&nbsp;名:</strong></td>
                <td width="170" height="35" align="left" valign="middle"><input type="text" name="passengerNa" id="passengerNa" class="JpText" /></td>
                <td width="78" height="35" align="center" valign="middle">&nbsp;</td>
                <td width="170" height="35" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>性&nbsp;&nbsp;别:</strong></td>
                <td height="35" align="center" valign="middle"><input name="gender" type="radio" id="gender" value="male" checked="checked" />
                  <label for="male">男&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="gender" id="gender" value="female" />
                    女</label></td>
                <td height="35" align="center" valign="middle">&nbsp;</td>
                <td height="35" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>工作单位:</strong></td>
                <td height="35" align="left" valign="middle"><label for="workspace"></label>
                  <input type="text" name="workspace" id="workspace" /></td>
                <td height="35" align="center" valign="middle">&nbsp;</td>
                <td height="35" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>身份证号:</strong></td>
                <td width="170" height="35" align="left" valign="middle"><input type="text" name="passengerId" id="passengerId" class="JpText" /></td>
                <td width="78" height="35" align="center" valign="middle">&nbsp;</td>
                <td width="170" height="35" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>手&nbsp;&nbsp;机:</strong></td>
                <td width="170" height="35" align="left" valign="middle"><input type="text" name="phone" id="phone" class="JpText" /></td>
                <td width="78" height="35" align="center" valign="middle">&nbsp;</td>
                <td width="170" height="35" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="35" align="right" valign="middle"><strong>始发地:</strong></td>
                <td width="170" height="35" align="left" valign="middle"><div id="JpDate">
                  <dl>
                    <dt style="float:left">
                      <input type="text" id="Ctiy01" name="Ctiy01" class="JpTextDate" onblur="return CityClose('apDiv1');" />
                    </dt>
                    <dd style="float:left"><img src="Img/QN1CS2.gif" width="16" height="13" onclick="return City('apDiv1','Ctiy01');"/></dd>
                  </dl>
                </div></td>
                <td width="78" height="35" align="right" valign="middle"><strong>目的地:</strong></td>
                <td width="170" height="35" align="left" valign="middle"><div id="JpDate">
                  <dl>
                    <dt style="float:left">
                      <input type="text" id="Ctiy02" name="Ctiy02" class="JpTextDate" onblur="return CityClose('apDiv2');" />
                    </dt>
                    <dd style="float:left"><img src="Img/QN1CS2.gif" width="16" height="13" onclick="return City('apDiv2','Ctiy02');"/></dd>
                  </dl>
                </div></td>
              </tr>
              <tr>
                <td height="70" colspan="4"><!---->
                  <table width="496" border="0" cellpadding="0" cellspacing="0" id="Fly01">
                    <tr>
                      <td width="78" height="35" align="right" valign="middle"><strong>出发日期:</strong></td>
                      <td width="170" height="35" align="left" valign="middle"><div id="JpDate">
                        <dl>
                          <dt style="float:left">
                            <input type="text" id="EntTime" name="EntTime" class="JpTextDate" />
                          </dt>
                          <dd style="float:left"><img src="Img/QN1CS1.gif" width="16" height="13" onclick="return showCalendar('EntTime', 'y-mm-dd');"/></dd>
                        </dl>
                      </div></td>
                      <td width="78" height="35" align="center" valign="middle">&nbsp;</td>
                      <td width="170" align="center" valign="middle">&nbsp;</td>
                      </tr>
                    <tr>
                      <td height="35" align="center" valign="middle">&nbsp;</td>
                      <td width="170" height="35" align="center" valign="middle"><input type="submit" name="insert" id="insert" value="添加" /></td>
                      <td height="35" colspan="2" align="center" valign="middle"><input type="reset" name="Reset" id="Reset" value="重置" /></td>
                      </tr>
                  </table>
                  <!---->
                  <table width="496" border="0" cellpadding="0" cellspacing="0" id="Fly02" style="display:none">
                    <tr>
                      <td width="78" height="35" align="right" valign="middle"><strong>出发日期:</strong></td>
                      <td width="170" height="35" align="left" valign="middle"><div id="JpDate">
                        <dl>
                          <dt style="float:left">
                            <input type="text" id="EntTime01" name="EntTime01" class="JpTextDate" /></dt>
                          <dd style="float:left"><img src="Img/QN1CS1.gif" width="16" height="13" onclick="return showCalendar('EntTime01', 'y-mm-dd');"/></dd>
                        </dl></div></td>
                      <td width="78" height="35" align="right" valign="middle"><strong>返程日期:</strong></td>
                      <td width="170" height="35" align="left" valign="middle"><div id="JpDate">
                        <dl>
                          <dt style="float:left">
                            <input type="text" id="EntTime02" name="EntTime02" class="JpTextDate" />
                            </dt>
                          <dd style="float:left"><img src="Img/QN1CS1.gif" width="16" height="13" onclick="return showCalendar('EntTime02', 'y-mm-dd');"/></dd>
                          </dl>
                      </div></td></tr>
                      <tr>
                      <td height="35" align="center" valign="middle">&nbsp;</td>
                      <td width="170" height="35" align="center" valign="middle"><input type="submit" name="insert" id="insert" value="添加" /></td>
                      <td height="35" colspan="2" align="center" valign="middle"><input type="reset" name="Reset" id="Reset" value="重置" /></td>
                      </tr>
                  </table>
                  <!----></td>
              </tr>
            </table></td>
          </tr>
          </table>
        </form>
        <div id="apDiv1"><script language="javascript">SetCity01('Ctiy01','apDiv1','True');</script></div>
        <div id="apDiv2"><script language="javascript">SetCity01('Ctiy02','apDiv2','False');</script></div>
      </div>
      <div id="JpLeftBottom"></div>
    </div>
  </div>
</div>
</body>
</html>