<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULT PROCESSING SYSTEM</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            header{
                width: 100%;
                position: fixed;
                padding: 10px 0;
                background: blue;
                color: #fff;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header><h2><b>Result Processing System</b></h2></header>
        <%
            String subject = (String) session.getAttribute("subject");
        %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ipproject" user="root" password=""/>
        <sql:update dataSource="${db}" var="ans1" >
            DELETE FROM <%=subject%> WHERE roll=?;
            <sql:param value="${roll}"/>
        </sql:update>   
    <center>
        <br/><br/><br/><br/><br/><br/>
        <c:if test="${ans1==0}">
            <c:out value="Error Deleting the student"/>
        </c:if>
        <c:if test="${ans1!=0}">
            <c:out value=" Student deleted successfully "/>
        </c:if>