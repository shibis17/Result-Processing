<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>RESULT PROCESSING SYSTEM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                top: 50%;
                left: 45%;
                margin-left: -100px;
                margin-top: -100px;
                padding: 30px 10px 10px 10px;
                border: 5px solid yellow;
                width: 320px;
                height: 220px;
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
    <center>
        <div class="after">
            <form action="deletestudent.jsp">
                ROLL NO:<input type="text" name="roll" required><br/><br/>
                SUBJECT:<select id="subject" name="subject">
                    <option value="english">ENGLISH</option>
                    <option value="math">MATHS</option>
                    <option value="chemistry">CHEMISTRY</option>
                    <option value="physics">PHYSICS</option>
                    <option value="ct">COMPUTING TECHNIQUES</option>
                    <option value="ctlab">CT LAB</option>
                    <option value="chemlab">CHEMISTRY LAB</option>
                    <option value="phylab">PHYSICS LAB</option>
                </select><br/><br/><br/>
                <input type="submit" value="PROCEED">
            </form>
        </div>
    </center>
</body>
</html>
