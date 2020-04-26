<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="hibernate_year.ManageStudentData"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Result Processing System </title>
        <style>
            a{
                text-decoration: none;
                color: black;
            }
            a:hover{
                background-color: yellow;
                color: blue;
            }
        </style>
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
            ol{
                text-align: center;
                position: absolute;
                top: 50%;
                left: 45%;
            }
        </style>
    </head>
    <body>
        <header><h2><b>Result Processing System</b></h2></header>
        <ol>
            <%
                String subject = request.getParameter("subject");
                session.setAttribute("subject", subject);
                String year = request.getParameter("year");
                ManageStudentData student = new ManageStudentData(subject);
                List<String> data = student.listStudentsIndividual(year);
                Iterator iterator = data.iterator();
                while (iterator.hasNext()) {
                    String id = (String) iterator.next();
                    String tokens[] = id.split(" ");
            %>
            <li><a id=<%=tokens[0]%> onclick="nextPage(this.id)"><% out.println(id); %></a></li>
                <%
                    }
                %>       
            <script>
                function nextPage(id)
                {
                    window.location.href = 'individualstudent.jsp?roll=' + id;
                }
            </script>
    </body>
</html>
