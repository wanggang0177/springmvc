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
	<a href="param/getDetail/123">����ռλ��������</a><br>
	<a href="param/getDetail/123/1/2/3">����ͨ���������: url = param/getDetail/123/1/2/3</a><br>
	<a href="param/reg/wangg-27">URL������ʽӳ��</a><br>
	
	<p>ָ��ӳ������������ĳ����</p>
	<a href="param/paramstest?example=13">url:param/paramstest?example=13</a>
	<p>ָ��ӳ�������л���ĳ�����������ĳ��ֵ</p>
	<a href="param/paramstest2?example2=aaa">url:param/paramstest2?example2=aaa</a>
	<p>չʾ��</p>
	����ռλ��������:${id}
	<br>
	URL������ʽӳ��:${name}  ${age}
	<br>
</body>
</html>