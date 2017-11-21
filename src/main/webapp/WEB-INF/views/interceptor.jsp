<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page isELIgnored="false"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<base href="<%=basePath%>">
</head>
<body>

	<p> spring interceptor Demo</p>
 	<form action="databind/form" method="post">
		userName:<input type="text" name="userName"><br>
		passWord:<input type="password" name="passWord"><br>
		<input type="submit" value="submit">
	</form>
 	
</body>
</html>