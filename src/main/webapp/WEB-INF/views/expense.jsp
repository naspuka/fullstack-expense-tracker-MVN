<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <h1 style="text-align: center; ">Add Expense</h1>
    <div style="display:flex; padding-left: 30px;">
        <form:form style="display:flex; flex-direction:column;" action="${contextRoot}/expense" method="post" modelAttribute="expense">
            <p>Expense Name:</p>
            <form:input style="margin-bottom:15px; padding-bottom:15px;" path="expensename" placeholder="Enter expense name"/>
            <p>Amount/ Cost:</p>
            <form:input style="margin-bottom:15px; padding-bottom:15px;" path="amount" placeholder="Enter amount"/>
            <p>Note:</p>
            <form:textarea style="margin-bottom:15px; padding-bottom:15px;" path="note" placeholder="Enter note (Optional)"/>
            <button style="background-color:rgb(0, 0, 255); border: solid 2px; border-radius: 5px; color:white; padding:5px;  width: 60%;" type="submit">Add Expense</button>
        </form:form>
    </div>
</body>
</html>