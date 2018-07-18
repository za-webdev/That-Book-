
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/create" modelAttribute="book">
    <form:label path="title">Title:
    <form:input path="title"/></form:label>
     <form:errors path="title" class="error"/>
    <br>
    
    <form:label path="description">Description:
    <form:textarea path="description"/></form:label>
     <form:errors path="description" class="error"/>
    <br>
    
    <form:label path="language">Language:
    <form:input path="language"/></form:label>
    <form:errors path="language" class="error"/>
    <br>
    
    <form:label path="numberOfPages">Number Of Pages:    
    <form:input type="number" path="numberOfPages"/></form:label>
     <form:errors path="numberOfPages" class="error"/> 
    <br>
    
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>