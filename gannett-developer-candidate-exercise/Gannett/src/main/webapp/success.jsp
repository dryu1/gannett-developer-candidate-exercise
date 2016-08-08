<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>My Delicious Articles</title>
	<style type="text/css">
		.well	{
			color: #8B4513
		}
		.rare	{
			color: #DC143C
		}
	</style>
</head>
<body>
	<h2>My Delicious Articles</h2>
	
	<table>
		<c:forEach items="${articles}" var="item">
			<tr>
				<th>Title </th>
				<th class="${theme ? 'well' : 'rare'}">${item.title}</th>
			</tr>	
			<tr>
				<th>Summary</th>
				<th class="${theme ? 'well' : 'rare'}">${item.summary}</th>
			</tr>
			<tr>
				<th>URL</th>
				<th class="${theme ? 'well' : 'rare'}"><a href="${item.href}">${item.href}</a></th>
			</tr>
		</c:forEach>
	</table>
	

	
</body>
</html>
