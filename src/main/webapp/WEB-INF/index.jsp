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

            <div class="container mt-5">
                <nav>
                    <h2><a href="/new">Add Person</a> | <a href="/licenses/new">Add License</a></h2>
                </nav>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>License #</th>	
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${ persons }" var="person">
                        <tr>
                            <td>${ person.firstName } ${ person.lastName }</td>
                            <td>${ person.license.getNumberAsString() }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>	
            </div>
        

            </body>

            </html>