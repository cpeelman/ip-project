<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<body>
<div id="container">
    <%@include file="../header.jsp" %>
    <jsp:include page="../head.jsp">
        <jsp:param name="title" value="Exams"/>
    </jsp:include>

    <main>
        <table>
            <tr>
                <th>Course</th>
                <th>Date</th>
                <th>Classroom</th>
                <th></th>
            </tr>

            <c:forEach var="exam" items="${exams}">
                <tr>
                    <td><a href="<c:url value="exam/${exam.id}.htm"/>">${exam.course.name}</a></td>
                    <td>${exam.date}</td>
                    <td>${exam.classroom.location}</td>
                    <td>Remove</td>
                </tr>
            </c:forEach>

            <td><a href="<c:url value="/exam/new.htm"/>">Add exam</a></td>
            <td></td>
            <td></td>
            <caption>Exam Overview</caption>
        </table>
    </main>

    <footer> &copy; Carolyne Peelman, UC Leuven-Limburg</footer>

</div>
</body>
</html>