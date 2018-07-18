<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<h2>Book Info</h2>
		
		<p>Title: ${book.title}</p>
		<p>Description: ${book.description}</p>
		<p>Language: ${book.language}</p>
		<p>Number Of Pages: ${book.numberOfPages}</p>
	</div>
</body>
</html>