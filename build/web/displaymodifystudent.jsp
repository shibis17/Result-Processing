
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
                top: 40%;
                left: 45%;
                margin-left: -100px;
                margin-top: -100px;
                padding: 30px 10px 10px 10px;
                border: 5px solid yellow;
                width: 420px;
                height: 350px;
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
            h1{
                color: white;
            }
            table{
                background-color: yellow;
            }
        </style>
    </head>
    <body>
        <header><h2><b>Result Processing System</b></h2></header>
                    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ipproject" user="root" password=""/>
                    <sql:update dataSource="${db}" var="ans1" >
            update <%= request.getParameter("subject")%> set sname=?,dep=?,year=?,assess1=?,assess2=? where roll=?;
            <sql:param value="${param.sname}"/>
            <sql:param value="${param.dep}"/>
            <sql:param value="${param.year}"/>
            <sql:param value="${param.assess1}"/>
            <sql:param value="${param.assess2}"/>
            <sql:param value="${roll}"/>
        </sql:update>   
        <jsp:useBean id="user" class="Bean.StudentData"/>
        <jsp:setProperty name="user" property="*"/>
        <div class="after">
            <center>
                <table border="1">

                    <tr>
                        <th>Roll Number</th>
                        <td><jsp:getProperty name="user" property="roll"/></td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td><jsp:getProperty name="user" property="sname"/></td>
                    </tr>
                    <tr>
                        <th>Department</th>
                        <td><jsp:getProperty name="user" property="dep"/></td>
                    </tr>
                    <tr>
                        <th>Year</th>
                        <td><jsp:getProperty name="user" property="year"/></td>
                    </tr>
                    <tr>
                        <th>Subject</th>
                        <td><jsp:getProperty name="user" property="subject"/></td>
                    </tr>
                    <tr>
                        <th>Assess1</th>
                        <td><jsp:getProperty name="user" property="assess1"/></td>
                    </tr>
                    <tr>
                        <th>Assess2</th>
                        <td><jsp:getProperty name="user" property="assess2"/></td>
                    </tr>
                </table>
                <br><br>
                <b><h1>Modified</h1></b>
            </center>
        </div>
    </body>
</html>
