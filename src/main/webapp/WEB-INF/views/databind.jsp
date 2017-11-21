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
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<base href="<%=basePath%>">
</head>
<body>
	<h3>databind</h3>
	<p>1.@RequestParam，绑定单个请求数据，可以是URL中的数据，表单提交的数据或上传的文件； </p>
	
	<form action="databind/uploadFile?urlParam=AFAFASFASF" method="post" enctype = "multipart/form-data">
		form text:<input type="text" name="formParam">
		file upload:<input type="file" name="formFile">
		<input type="submit" value="Submit">
	</form>
	<p>2.@RequestParam，数据绑定通过model </p>
	<form action="databind/form" method="post">
		userName:<input type="text" name="userName"><br>
		passWord:<input type="password" name="passWord"><br>
		<input type="submit" value="submit">
	</form>
	<p>3.@CookieValue，用来绑定Cookie中的数据 </p>
	<a href="databind/cookiebind"> 测试@CookieValue</a>
	<p>4.@RequestHeader，获取User-Agent </p>
	<a href="databind/headerbind">测试@RequestHeader</a>
	<p>5.@ModelAttribute 绑定数据到模型中</p>
	<form action="databind/form2" method="post">
		userName:<input type="text" name="userName"><br>
		passWord:<input type="password" name="passWord"><br>
		<input type="submit" value="submit">
	</form>
	<p>6.@SessionAttributes 绑定数据到session中</p>
	<form action="databind/usernamebind" method="post">
		userName:<input type="text" name="userName">
		<input type="submit" value="submit">
	</form>
	<form action="databind/passwordbind" method="post">
		passWord:<input type="password" name="passWord">
		<input type="submit" value="submit">
	</form>
	<h3>结果验证</h3>
	<p>1.@RequestParam，绑定单个请求数据，可以是URL中的数据，表单提交的数据或上传的文件； </p>
	url参数：${urlParam}<br>
	formParam:${formParam}<br>
	uploadFileName:${formFileName}
	<p>2.@RequestParam，数据绑定通过model</p>
	userName:${user.userName}<br>
	passWord:${user.passWord}
	<p>3.@CookieValue，用来绑定Cookie中的数据 </p>
	${jsessionId}
	<p>4.@RequestHeader，获取User-Agent </p>
	${userAgent}
	<p>5.@ModelAttribute 绑定数据到模型中</p>
	userName:${userBind.userName}<br>
	passWord:${userBind.passWord}<br>
	<p>6.@SessionAttributes 绑定数据到session中</p>
	userName:${sessionaccountmodel.userName}<br>
	passWord:${sessionaccountmodel.passWord}<br>
</body>
</html>