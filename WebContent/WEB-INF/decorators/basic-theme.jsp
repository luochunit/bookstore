<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
</head>
<body>
	<div class="container-fluid">	
		<div class="row-fluid">
			<h1>Book Store</h1>
		</div>	
		<div class="row-fluid" id="navigation">
			<ul class="nav nav-pills">
				<li class="active"><a href="${pageContext.request.contextPath}/book/">List All</a></li>
				<li><a href="${pageContext.request.contextPath}/book">Add New</a></li>
			</ul>
		</div>
		<div class="row-fluid">
			<decorator:body />
		</div>
		<div class="row-fluid">
			<h6>Copyright &copy; Book Store, 2012</h6>
		</div>
	</div>
</body>
</html>