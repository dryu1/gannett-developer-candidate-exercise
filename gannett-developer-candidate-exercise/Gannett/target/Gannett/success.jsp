<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Sucess title here</title>
</head>
<body>
	<h5>Success page</h5>
	
	<table>
		<c:forEach items="${articles}" var="item">
			<tr>
				<th>Title </th>
				<th>${item.title}</th>
			</tr>	
			<tr>
				<th>Summary</th>
				<th>${item.summary}</th>
			</tr>
			<tr>
				<th>URL</th>
				<th>${item.href}</th>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>