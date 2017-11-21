<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page isELIgnored="false"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";

	System.out.print(basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/my.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<base href="<%=basePath%>">
</head>
<body>
	<h3>databind2</h3>
	
	<p>test jquery</p>
	<input type="button" value="test jquery" id = "tjquery">
	<p>7.@RequestBody  @ResponseBody</p>
	<form method="post">     
        	用户名：<input type="text" name="userName">
        	密 码：<input type="password" name="passWord">
        <input type="button" id="submit" value="Submit" />
    </form>
	<h3>结果验证</h3>
</body>
</html>