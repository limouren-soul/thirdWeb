<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.net.URLEncoder"
		import="java.text.SimpleDateFormat"
		import="java.util.Date"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取cookie</title>

</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String user=URLEncoder.encode(request.getParameter("user"),"utf-8");
Date date = new Date();
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd---HH:mm:ss");
Cookie cookie=new Cookie("mrCookie",user+"#"+df.format(date));
cookie.setMaxAge(60*60*24*30);
response.addCookie(cookie);
%>
<script type="text/javascript">window.location.href="index.jsp"</script>
</body>
</html>