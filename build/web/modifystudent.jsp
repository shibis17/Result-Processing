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
            .after{
                margin: auto;
                position: absolute;
                top: 30%;
                left: 45%;
                margin-left: -100px;
                margin-top: -100px;
                padding: 30px 10px 10px 10px;
                border: 5px solid yellow;
                width: 420px;
                height: 520px;
                animation: color-me-in 1s infinite;
                text-align: center;
            }
            @keyframes color-me-in{
                0%{
                    border: 5px solid red;
                }
                50%{
                    border: 5px solid green;
                }
                100%{
                    border: 5px solid blue;
                }
            }
        </style>
    </head>
    <body>
        <header><h2><b>Result Processing System</b></h2></header>
                    <%
                        String subject = (String) request.getParameter("subject");
                    %>
                    <c:set var="roll" scope="session" value="${param.roll}"/>
                    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ipproject" user="root" password=""/>
                    <sql:query dataSource="${db}" var="ans1" >
            select * from <%=subject%> where roll=?;
            <sql:param value="${roll}"/>
        </sql:query>   
    <center>
        <c:if test="${ans1.rowCount==0}">
            <c:out value="Sorry no information is present for the given details"/>
        </c:if>
        <c:if test="${ans1.rowCount!=0}">
            <c:forEach var="user" items="${ans1.rows}">
                <div class="after">
                    <form name="add" action="displaymodifystudent.jsp" method="post">
                        ROLL:<input type="text" name="roll" value="<c:out value="${user.roll}"/>" required ><br><br>
                        NAME:<input type="text" name="sname" value="<c:out value="${user.sname}"/>" required><br><br>
                        DEPARTMENT :<input type="text" name="dep" value="<c:out value="${user.dep}"/>" required><br><br>
                        YEAR:<input type="text" name="year" value="<c:out value="${user.year}"/>" required><br><br>
                        SUBJECT:<input type="text" name="subject" value="<%=subject%>" required><br><br>
                        ASSESS1:<input type="text" name="assess1" value="<c:out value="${user.assess1}"/>" required><br><br>
                        ASSESS2:<input type="text" name="assess2" value="<c:out value="${user.assess2}"/>" required><br><br>
                        <input type="submit" value="MODIFY">
                        </div>
                    </c:forEach>
                </c:if>
            </form>
    </center>
</body>
</html>
