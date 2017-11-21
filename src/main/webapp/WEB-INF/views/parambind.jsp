<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page isELIgnored="false"%>
<%  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<base href="http://localhost:8080/springmvc/">
</head>
<body>
	<a href="param/getDetail/123">测试占位符参数绑定</a><br>
	<a href="param/getDetail/123/1/2/3">测试通配符参数绑定: url = param/getDetail/123/1/2/3</a><br>
	<a href="param/reg/wangg-27">URL正则表达式映射</a><br>
	
	<p>指定映射请求必须包含某参数</p>
	<a href="param/paramstest?example=13">url:param/paramstest?example=13</a>
	<p>指定映射请求中或者某参数必须等于某个值</p>
	<a href="param/paramstest2?example2=aaa">url:param/paramstest2?example2=aaa</a>
	<p>展示区</p>
	测试占位符参数绑定:${id}
	<br>
	URL正则表达式映射:${name}  ${age}
	<br>
</body>
</html>