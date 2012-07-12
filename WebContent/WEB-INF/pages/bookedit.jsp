<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Book</title>
<style type="text/css">
	form {
		width: 50%;
	}
	p label {
		width: 8em;
		float: left;
		text-align: right;
		margin-right:0.5em;
	}
	p input.submit {
		margin-left: 9.5em;
	}
</style>
</head>
<body>
<div>
	<c:forEach var="error" items="${errors}">
		<p>${error.message}</p>
	</c:forEach>
</div>
<form action="${pageContext.request.contextPath}/book" method="post">
	<p><label>ISBN</label><input type="text" name="isbn" value="${book.isbn}"/></p>
	<p><label>Title</label><input type="text" name="title" value="${book.title}"/></p>
	<p><label>Description</label><input type="text" name="desc" value="${book.description}"/></p>
	<p><label>Price</label><input type="text" name="price" value="${book.price}"/></p>
	<p><label>Publish Date</label><input type="text" name="pubdate" value="${pubDate}"/></p>
	<p><input type="submit" class="submit" value="submit"/></p>
</form>

</body>
</html>