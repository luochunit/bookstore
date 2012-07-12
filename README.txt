Project Notes

#REST API
	/book/		--	list all books
	/book		--	add new book
	/book?id=..	--	edit existing book
	
#Request URI Mapping (Model 2)
	ListServlet.get()	--	list all
	EditServlet.get()	--	load form
	EditServlet.post()	--	save form
	
#JSP & JSTL & EL
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	--	JSP Page directive
	<fmt:formatDate/>	--	format java.util.date
	<c:forEach/>		--	loop
	${pageContext.request.contextPath}	--	root context
	SiteMesh

#Servlet
	request.getRequestDispatcher(...).forward(req,resp)	--	forward request	--	save final URL
	response.sendRedirect(...)	--	redirect response 302	--	different final URL
		
#JEE
	beans.xml	--	at lease empty xml is required for CDI bootstrap
	@WebServlet	--	servlet mapping
	@Inject		--	CDI
	@ApplicationScoped	--	CDI
	
#HTML CSS
	form styling
	table styling
	
#Validation
	hibernate validator	--	JSR 303 bean validation reference implementation

	
	

	