<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML>
<html>
<body>
<div id="container">
    <%@include file="../header.jsp" %>
    <jsp:include page="../head.jsp">
        <jsp:param name="title" value="${action} course"/>
    </jsp:include>

    <main>
        <c:url var="post_url" value="/course/save.htm"/>
        <form:form modelAttribute="course" method="post" action="${post_url}">
            <p>
                <form:hidden path="id"/>
            </p>

            <p>
                <label for="code">Code:</label>
                <form:input path="code"/>
                <form:errors path="code" cssClass="has-error"/>
            </p>

            <p>
                <label for="name">Name:</label>
                <form:input path="name"/>
                <form:errors path="name" cssClass="has-error"/>
            </p>

            <p>
                <label for="teacher">Teacher:</label>
                <form:select path="teacher">
                    <form:option value="0" label="Select teacher"/>
                    <form:options items="${teachers}" itemValue="id" itemLabel="info"/>
                </form:select>
                <form:errors path="teacher" cssClass="has-error"/>
            </p>

            <p>
                <input id="save" type="submit" value="Save"/>
                <form:errors path="id" cssClass="has-error"/>
            </p>
        </form:form>
    </main>

    <footer> &copy; Webontwikkeling 3, UC Leuven-Limburg</footer>

</div>
</body>
</html>
