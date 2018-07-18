
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Search Here</h3>
	<form method="get" action="/">
		<input type="text" name="q">
		<input type="submit">
	</form>
    
    
	<div class="wrapper">
		<h1>All Books Here</h1>
		<a href="/create">Add a book</a>
		<table border=1>
				<tr>
					<td>Title</td>
					<td>Description</td>
					<td>Language</td>
					<td>Delete</td>
					<td>Actions</td>
				</tr>
			<c:forEach items="${books}" var="book" varStatus="loop">
				<tr>
				    <td><c:out value="${book.title}"/></td>
				    <td><c:out value="${book.description}"/></td>
				    <td><c:out value="${book.language}"/></td>
				    <td><c:out value="${book.numberOfPages}"/></td>
			    	<td>
			    	<a href="/books/delete/${book.id}">Delete</a>
			    	<a href="/books/edit/${book.id}">edit</a>
			    	<a href="/books/${book.id}">Show</a>
			    	</td>
			    	
				</tr>
			</c:forEach>
		
		</table>
	</div>
	
	
	
	
</body>
</html>