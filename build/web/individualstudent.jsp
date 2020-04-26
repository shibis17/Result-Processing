<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="hibernate_year.ManageStudentData"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Result Processing System </title>
        <script>
            function image() {
                var Image = document.getElementById("img");
                Image.src = "BarChart.jpeg?" + new Date().getTime();
            }
        </script>
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
            #b{
                color: yellow;
            }
            </style>
    </head>
    <%
        String roll = request.getParameter("roll");
        String subject = (String) session.getAttribute("subject");
        ManageStudentData student = new ManageStudentData(subject);
        int[] results = student.individual_barchart(roll);
    %>
    <header><h2><b>Result Processing System</b></h2></header>
    <body>
        <br><br><br><br>
    <center>
        <div class="row">
            <div class="col">
                <img id="img" src="BarChart.jpeg" onload="image()">
            </div>
            <div class="col">
            <br/><br/><br/><br/><br/><br/>
                <b id="b">
                    <%
                        out.print("Assess 1 Marks = " + results[0]);
                        if (results[0] >= 25) {
                            out.print("    Status = pass<br>");
                        } else {
                            out.print("    Status = fail<br>");
                        }

                        out.print("Assess 2 Marks = " + results[1]);
                        if (results[1] >= 25) {
                            out.print(" Status = pass");
                        } else {
                            out.print(" Status = fail");
                        }
                    %>
                </b>
            </div>
    </center>
</div>
</body>
</html>
