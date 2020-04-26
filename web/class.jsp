<%@page import="java.text.DecimalFormat"%>
<%@ page import="hibernate_year.ManageStudentData"%>

<!DOCTYPE html>
<html>
    <head>
        <title> Result Processing System </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function image(id) {
                var Image = document.getElementById(id);
                Image.src = id + "?" + new Date().getTime();
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
    <header><h2><b>Result Processing System</b></h2></header>
    <body>
        <br/><br/><br/><br/><br/><br/>
    <center>
        <%
            String year = request.getParameter("year");
            String subject = request.getParameter("subject");
            DecimalFormat numberFormat = new DecimalFormat("#.00");
            int[] count;
            int pass, fail, total;
            ManageStudentData student = new ManageStudentData(subject);
            count = student.listStudentsYear(year);
            pass = count[2] + count[3] + count[4];
            fail = count[0] + count[1];
            total = pass + fail;
            Double tot = new Double(total);
            Double passpercentage = new Double((pass * 100) / tot);
            Double failpercentage = new Double((fail * 100) / tot);
        %>
        <div class="row">
            <div class="col">
                <img src="piechart<%=year%>.jpeg" id="piechart<%=year%>.jpeg" onload="image(this.id)" height="500" width="90%">
            </div>
            <div class="col">
                <br><br><br>
                <b id="b">
                No. of students in 0-10 range=<%=count[0]%><br>
                No. of students in 11-20 range=<%=count[1]%><br>
                No. of students in 21-25 range=<%=count[2]%><br>
                No. of students in 26-40 range=<%=count[3]%><br>
                No. of students in 41-50 range=<%=count[4]%><br>
                No. of students passed=<%=pass%><br>
                No. of students failed=<%=fail%><br>
                Total No. of students=<%=total%><br>
                Pass Percentage=<%=numberFormat.format(passpercentage)%><br>
                Fail Percentage=<%=numberFormat.format(failpercentage)%><br>
                </center>
        </b>
            </div>
        </div>
    </body>
</html>
