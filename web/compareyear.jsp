<%@page import="java.text.DecimalFormat"%>
<%@ page import="hibernate_year.ManageStudentData"%>

<html>
    <head>
        <title>Result Processing System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <link rel="stylesheet" href="bootstrap.css">
        <script>
            function image(id) {
                var Image = document.getElementById(id);
                Image.src = id + "?" + new Date().getTime();
            }
        </script>
    </head>
    <body>
        <header><h2><b>Result Processing System</b></h2></header>
                    <%
                        String year1 = request.getParameter("year1");
                        String year2 = request.getParameter("year2");
                        String subject = (String) request.getParameter("subject");
                    %>
    <center>
        <h1>Comparison between years <%out.println(year1);%> and <%out.println(year2);%></h1>
    </center>
    <hr>
    <br><br>
    <%
        DecimalFormat numberFormat = new DecimalFormat("#.00");
        int[] count1, count2;
        int pass1, fail1, total1, pass2, fail2, total2;
        ManageStudentData student = new ManageStudentData(subject);
        count1 = student.listStudentsYear(year1);
        pass1 = count1[2] + count1[3] + count1[4];
        fail1 = count1[0] + count1[1];
        total1 = pass1 + fail1;
        Double tot1 = new Double(total1);
        Double passpercentage1 = new Double((pass1 * 100) / tot1);
        Double failpercentage1 = new Double((fail1 * 100) / tot1);
        count2 = student.listStudentsYear(year2);
        pass2 = count2[2] + count2[3] + count2[4];
        fail2 = count2[0] + count2[1];
        total2 = pass2 + fail2;
        Double tot2 = new Double(total2);
        Double passpercentage2 = new Double((pass2 * 100) / tot2);
        Double failpercentage2 = new Double((fail2 * 100) / tot2);
        if (count1 == null || count2 == null) {
            out.println("No information available for the entered year");
        }
    %>   
    <div class="row">
        <div class="col">
            <img src="piechart<%=year1%>.jpeg" id="piechart<%=year1%>.jpeg" onload="image(this.id)" style="width:100%">
            <b id="b">
            No. of students in 0-10 range=<%=count1[0]%><br>
            No. of students in 11-20 range=<%=count1[1]%><br>
            No. of students in 21-25 range=<%=count1[2]%><br>
            No. of students in 26-40 range=<%=count1[3]%><br>
            No. of students in 41-50 range=<%=count1[4]%><br>
            No. of students passed=<%=pass1%><br>
            No. of students failed=<%=fail1%><br>
            Total No. of students=<%=total1%><br>
            Pass Percentage=<%=numberFormat.format(passpercentage1)%><br>
            Fail Percentage=<%=numberFormat.format(failpercentage1)%><br>
            </b>
        </div>
        <div class="col">
            <img src="piechart<%=year2%>.jpeg" id="piechart<%=year2%>.jpeg" onload="image(this.id)" style="width:100%">
            <b id="b">
            No. of students in 0-10 range=<%=count2[0]%><br>
            No. of students in 11-20 range=<%=count2[1]%><br>
            No. of students in 21-25 range=<%=count2[2]%><br>
            No. of students in 26-40 range=<%=count2[3]%><br>
            No. of students in 41-50 range=<%=count2[4]%><br>
            No. of students passed=<%=pass2%><br>
            No. of students failed=<%=fail2%><br>
            Total No. of students=<%=total2%><br>
            Pass Percentage=<%=numberFormat.format(passpercentage2)%><br>
            Fail Percentage=<%=numberFormat.format(failpercentage2)%><br>
            </b>
        </div>
    </div>
</body>
</html>
