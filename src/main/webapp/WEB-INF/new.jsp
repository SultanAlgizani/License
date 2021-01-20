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
                    <h2>New Person</h2>
                    <form:form action="/" method="POST" modelAttribute="person">
                        <div class="form-group">
                            <form:label path="firstName">First Name</form:label>
                            <form:errors path="firstName"/>
                            <form:input class="form-control" path="firstName"/>
                        </div>
                        <div class="form-group">
                            <form:label path="lastName">Last Name</form:label>
                            <form:errors path="lastName"/>
                            <form:input class="form-control" path="lastName"/>
                        </div>
                        <button class="btn btn-outline-info">Add Person</button>
                    </form:form>
                </div>
                        


            </body>

            </html>