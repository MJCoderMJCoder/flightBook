<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%	String passengerId = request.getParameter("passengerId");
	if (passengerId.trim().equals("142327199203282037")){%>
	<jsp:forward page="handleQueryLZF.jsp" />
	<%} else {%>
	<table width="100%">
	  <tr>
	    <td colspan="4" align="center"><h1>&#26242;&#26080;&#35813;&#26053;&#23458;&#20449;&#24687;&#65292;&#26159;&#21542;&#24320;&#22987;&#39044;&#35746;&#26426;&#31080;</h1></td>
      </tr>
	  <tr>
	    <td align="right">&nbsp;</td>
	    <td align="center">&nbsp;</td>
	    <td align="center">&nbsp;</td>
	    <td align="center">&nbsp;</td>
      </tr>
	  <tr>
	    <td width="23%" align="right">&nbsp;</td>
	    <td width="27%" align="center"><form name="form1" method="post" action="insert.jsp">
	    <input type="submit" name="insert" id="insert" value="&#39044;&#35746;&#26426;&#31080;"></form></td>
	    <td width="33%" align="center"><form name="form2" method="post" action="index.jsp">
	      <input type="submit" name="back" id="back" value="&#36820;&#22238;&#39318;&#39029;">
        </form></td>
	    <td width="17%" align="center">&nbsp;</td>
      </tr>
</table>
								<%} 
%>

</body>
</html>