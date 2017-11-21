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
	1.3.URL通配符映射：<br>
	我们还可以通过通配符对URL映射进行配置，通配符有“？”和“*”两个字符。其中“？”表示1个字符，“*”表示匹配多个字符，“**”表示匹配0个或多个路径。<br>
	例如：<br>
	“/helloworld/index?”可以匹配“/helloworld/indexA”、“/helloworld/indexB”，但不能匹配“/helloworld/index”也不能匹配“/helloworld/indexAA”；<br>
	“/helloworld/index*”可以匹配“/helloworld/index”、“/helloworld/indexA”、“/helloworld/indexAA”但不能匹配“/helloworld/index/A”；<br>
	“/helloworld/index/*”可以匹配“/helloworld/index/”、“/helloworld/index/A”、“/helloworld/index/AA”、“/helloworld/index/AB”但不能匹配    “/helloworld/index”、“/helloworld/index/A/B”;<br>
	“/helloworld/index/**”可以匹配“/helloworld/index/”下的多有子路径，比如：“/helloworld/index/A/B/C/D”;<br>
	</p>
</body>
</html>