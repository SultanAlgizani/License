<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>License</title>
                <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
                <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
                <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="css/main.css" />
            </head>

            <body>


                <div class="container">
                    <h2>New License</h2>
                    <form:form action="/licenses" method="POST" modelAttribute="license">
                        <div class="form-group">
                            <form:label path="person">Person</form:label>
                            <form:errors path="person"/>
                            <form:select class="form-control" path="person">
                            <c:forEach items="${ persons }" var="p">
                                <form:option value="${ p.id }">${ p.firstName } ${ p.lastName }</form:option>
                            </c:forEach>
                            </form:select>
                        </div>
                        <div class="form-group">
                            <form:label path="state">State</form:label>
                            <form:errors path="state"/>
                            <form:input class="form-control" path="state"/>
                        </div>
                        <div class="form-group">
                            <form:label path="exirationDate">Expiration Date</form:label>
                            <form:errors path="exirationDate"/>
                            <form:input type="date" class="form-control" path="exirationDate"/>
                        </div>
                        <button class="btn btn-outline-info">Add License</button>
                    </form:form>
                </div>
            


            </body>

            </html>