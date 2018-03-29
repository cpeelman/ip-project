<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<body>
<div id="container">
    <%@include file="../header.jsp" %>
    <jsp:include page="../head.jsp">
        <jsp:param name="title" value="New exam"/>
    </jsp:include>

    <main>
        <c:url var="post_url" value="/exam/save.htm"/>
        <form:form modelAttribute="exam" method="post" action="${post_url}">
            <p>
                <form:hidden path="id"/>
            </p>


            <p>
                <label for="course">Course:</label>
                <form:select id="course" path="course">
                    <form:option value="0" label="Select course" disabled="true"/>
                    <form:options items="${courses}" itemValue="id" itemLabel="info"/>
                </form:select>
                <form:errors path="course" cssClass="has-error"/>
            </p>

            <p>
                <label for="datetime">Date:</label>
                <form:input type="datetime-local" id="datetime" path="datetime"/>
                <form:errors path="datetime" cssClass="has-error"/>
            </p>

            <p>
                <label for="classroom">Classroom:</label>
                <form:select id="classroom" path="classroom">
                    <form:option value="0" label="Select classroom" disabled="true"/>
                    <form:options items="${classrooms}" itemValue="id" itemLabel="info"/>
                </form:select>
                <form:errors path="classroom" cssClass="has-error"/>
            </p>

            <p>
                <input id="save" type="submit" value="Save"/>
            </p>
        </form:form>
    </main>

    <footer> &copy; Webontwikkeling 3, UC Leuven-Limburg</footer>

</div>
</body>
</html>
