<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>

	<p>
	1.3.URLͨ���ӳ�䣺<br>
	���ǻ�����ͨ��ͨ�����URLӳ��������ã�ͨ����С������͡�*�������ַ������С�������ʾ1���ַ�����*����ʾƥ�����ַ�����**����ʾƥ��0������·����<br>
	���磺<br>
	��/helloworld/index?������ƥ�䡰/helloworld/indexA������/helloworld/indexB����������ƥ�䡰/helloworld/index��Ҳ����ƥ�䡰/helloworld/indexAA����<br>
	��/helloworld/index*������ƥ�䡰/helloworld/index������/helloworld/indexA������/helloworld/indexAA��������ƥ�䡰/helloworld/index/A����<br>
	��/helloworld/index/*������ƥ�䡰/helloworld/index/������/helloworld/index/A������/helloworld/index/AA������/helloworld/index/AB��������ƥ��    ��/helloworld/index������/helloworld/index/A/B��;<br>
	��/helloworld/index/**������ƥ�䡰/helloworld/index/���µĶ�����·�������磺��/helloworld/index/A/B/C/D��;<br>
	</p>
</body>
</html>