<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/sample.css"/>"/>
</head>

<header>
    <nav>
        <ul>
            <li><a href="<c:url value="/index.htm"/>">
                <img id="logo" src="<c:url value="/images/ucll-logo.png"/>" alt="Home"></a></li>
            <li><a href="<c:url value="/classroom.htm"/>">Classrooms</a></li>
            <li><a href="<c:url value="/course.htm"/>">Courses</a></li>
            <li><a href="<c:url value="/exam.htm"/>">Exams</a></li>
            <li><a href="<c:url value="/student.htm"/>">Students</a></li>
            <li><a href="<c:url value="/teacher.htm"/>">Teachers</a></li>
            <security:authorize access="hasAnyRole('ADMIN', 'USER')">
                <li><a id="logout" href="<c:url value="/logout"/>">Logout
                    <img id="logout-button" src="<c:url value="/images/logout.png"/>"/></a></li>
            </security:authorize>
        </ul>
    </nav>
</header>
</html>