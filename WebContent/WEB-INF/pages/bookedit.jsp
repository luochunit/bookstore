<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
	<c:forEach var="error" items="${errors}">
		<p>${error.propertyPath} ${error.message}</p>
	</c:forEach>
</div>
<form class="form-horizontal" action="${pageContext.request.contextPath}/book" method="post">
	<fieldset>
		<div class="control-group">
			<label class="control-label">ISBN</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="isbn" value="${book.isbn}" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Title</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="title" value="${book.title}" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Author</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="author" value="${book.author}" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Description</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="desc" value="${book.description}" /> 
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Price</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="price" value="${book.price}" />
			</div> 
		</div>
		<div class="control-group">
			<label class="control-label">Publish Date</label>
			<div class="controls">
				<input class="input-xlarge" type="text" name="pubdate" value="${pubDate}" />
			</div>	
		</div>
		<div class="form-actions">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</fieldset>
</form>
