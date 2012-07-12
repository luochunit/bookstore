<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<table class="table">
	<thead>
		<tr>
			<th>ISBN</th>
			<th>Title</th>
			<th>Author</th>
			<th>Description</th>
			<th>Price</th>
			<th>Publish Date</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="book" items="${books}">
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/book?isbn=${book.isbn}">${book.isbn}</a></td>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.description}</td>
				<td>${book.price}</td>
				<td><fmt:formatDate value="${book.publishDate}"
						pattern="yyyy-MM-dd" /></td>
				<td><a
					href="${pageContext.request.contextPath}/deleteBook?isbn=${book.isbn}">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>