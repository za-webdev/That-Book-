
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/books/edit/${id}" modelAttribute="book">
    <form:label path="title">Title
    <form:errors path="title"/>
    <form:hidden path="id"/>
    <form:input path="title"/></form:label><br>
    
    <form:label path="description">Description
    <form:errors path="description"/>
    <form:textarea path="description"/></form:label><br>
    
    <form:label path="language">language
    <form:errors path="language"/>
    <form:input path="language"/></form:label><br>
    
    <form:label path="numberOfPages">Pages
    <form:errors path="numberOfPages"/>     
    <form:input type="number" path="numberOfPages"/></form:label><br>
    
    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>