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
	<p>1.@RequestParam���󶨵����������ݣ�������URL�е����ݣ����ύ�����ݻ��ϴ����ļ��� </p>
	
	<form action="databind/uploadFile?urlParam=AFAFASFASF" method="post" enctype = "multipart/form-data">
		form text:<input type="text" name="formParam">
		file upload:<input type="file" name="formFile">
		<input type="submit" value="Submit">
	</form>
	<p>2.@RequestParam�����ݰ�ͨ��model </p>
	<form action="databind/form" method="post">
		userName:<input type="text" name="userName"><br>
		passWord:<input type="password" name="passWord"><br>
		<input type="submit" value="submit">
	</form>
	<p>3.@CookieValue��������Cookie�е����� </p>
	<a href="databind/cookiebind"> ����@CookieValue</a>
	<p>4.@RequestHeader����ȡUser-Agent </p>
	<a href="databind/headerbind">����@RequestHeader</a>
	<p>5.@ModelAttribute �����ݵ�ģ����</p>
	<form action="databind/form2" method="post">
		userName:<input type="text" name="userName"><br>
		passWord:<input type="password" name="passWord"><br>
		<input type="submit" value="submit">
	</form>
	<p>6.@SessionAttributes �����ݵ�session��</p>
	<form action="databind/usernamebind" method="post">
		userName:<input type="text" name="userName">
		<input type="submit" value="submit">
	</form>
	<form action="databind/passwordbind" method="post">
		passWord:<input type="password" name="passWord">
		<input type="submit" value="submit">
	</form>
	<h3>�����֤</h3>
	<p>1.@RequestParam���󶨵����������ݣ�������URL�е����ݣ����ύ�����ݻ��ϴ����ļ��� </p>
	url������${urlParam}<br>
	formParam:${formParam}<br>
	uploadFileName:${formFileName}
	<p>2.@RequestParam�����ݰ�ͨ��model</p>
	userName:${user.userName}<br>
	passWord:${user.passWord}
	<p>3.@CookieValue��������Cookie�е����� </p>
	${jsessionId}
	<p>4.@RequestHeader����ȡUser-Agent </p>
	${userAgent}
	<p>5.@ModelAttribute �����ݵ�ģ����</p>
	userName:${userBind.userName}<br>
	passWord:${userBind.passWord}<br>
	<p>6.@SessionAttributes �����ݵ�session��</p>
	userName:${sessionaccountmodel.userName}<br>
	passWord:${sessionaccountmodel.passWord}<br>
</body>
</html>