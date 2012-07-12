<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books</title>
<style type="text/css">
table, th, td {
	width: 50%;
	border-style: solid;
	border-width: 1px;
	border-color: green;
}
th {
	background-color: green;
	color: white;
}
td {
	height: 10px;
	padding: 5px;
}
table {
	border-collapse: collapse;
	table-layout: fixed;
}
</style>
</head>
<body>
<a href="${pageContext.request.contextPath}/book">Add Book</a>
<table>
	<tr>
		<th>ISBN</th>
		<th>Title</th>
		<th>Description</th>
		<th>Price</th>
		<th>Publish Date</th>
	</tr>
	<c:forEach var="book" items="${books}">
		<tr>
			<td><a href="${pageContext.request.contextPath}/book?isbn=${book.isbn}">${book.isbn}</a></td>
			<td>${book.title}</td>
			<td>${book.description}</td>
			<td>${book.price}</td>
			<td><fmt:formatDate value="${book.publishDate}" pattern="yyyy-MM-dd" /></td>
			<td><a href="${pageContext.request.contextPath}/deleteBook?isbn=${book.isbn}">Delete</a></td>
		</tr>
	</c:forEach> 
</table>

</body>
</html>