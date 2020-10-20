<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<c:set var="contextRoot" value="${pageContent.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>First JSP</title></head>
<body style="margin:10px; background-color:#F0F8FF;">

    <h1 style="text-align: center; ">Expense tracker</h1>
    <div style="flex=0.3; padding-left: 30px;">
        <h2>${message}</h2>
    </div>
    <div style="flex=0.7; padding-left: 25%;">
        <a href="${contextRoot}/expense"><h3>Add Expense</h3></a>

        <c:forEach var="expense" items="${expenses}">
            <div>
                <h3>${expense.expensename}</h3>
                <h5><li>${expense.note}</li></h5>
                <button style="color:green; border-radius: 5px; border: solid 2px;"><p>$ ${expense.amount}</p></button>
            </div>
        </c:forEach>
    </div>

</body>
</html>