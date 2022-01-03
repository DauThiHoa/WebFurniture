<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="index.css" rel="stylesheet" type="text/css" media="screen,print"/>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<c:set var="auth" value="${sessionScope.auth}"/>
<c:if test="${auth == null }">
    <p>Vui lòng đăng nhập</p>
</c:if>
<c:if test="${auth != null }">
    <p>Xin chào ${auth.username}</p>
</c:if>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>