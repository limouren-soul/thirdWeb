<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLDecoder" 
     %>   <!-- 特殊字符转换成普通字符 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通过cookie保存并读取用户信息</title>
</head>
<body>
<!-- <a href ="deal.jsp?id=1&user="> 处理页</a> -->
<%
Cookie[] cookies=request.getCookies();
String user="";
String date="";

if(cookies !=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("mrCookie")){
			user=URLDecoder.decode(cookies[i].getValue().split("#")[0]);
			date=cookies[i].getValue().split("#")[1];
		}
	}
}
if("".equals(user)&&"".equals(date)){
	
%>
	游客你好，欢迎初次光临！
	<form action="deal.jsp" method =post>
	请输入姓名：<input name="user" type ="text" value="">
	<input type="submit" value="确定">
	</form>
	<%}else{%>
		欢迎<b><%=user%></b>再次光临<br>
		您注册的时间是：<%= date%>
	<%} %> 


</body>
</html>