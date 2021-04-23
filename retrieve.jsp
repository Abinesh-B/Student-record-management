<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("inputtext");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "datause";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<meta charset="utf-8">
        <title>STUDENT RECORD MANAGEMENT SYSTEM</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="style.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            <!-- Header Start -->
            <div class="header home">
                <div class="container-fluid">
                    <div class="header-top row align-items-center">
                        <div class="col-lg-3">
                            <div class="brand">
                                <a href="index.html">
                                    STUDENT RECORD MANAGEMENT SYSTEM
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="navbar navbar-expand-lg bg-light navbar-light">
                                

                                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                    <div class="navbar-nav ml-auto">
                                        <a href="register.html" class="nav-item nav-link active">Add Student</a>
                                         <a href="search.html" class="nav-item nav-link active">Search Student</a>
                                         <a href="textmessage.html" class="nav-item nav-link active">chat</a>
                                         <a href="#" class="nav-item nav-link active">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <form name="myform"  action="text.jsp" method="post">
<table border="0" cellspacing="0" cellpadding="5"><tr>
<td><textarea name="inputtext"></textarea></td>
<input type="radio" name="placement" value="append" checked> Add to Existing Text<br>
<td><p><input type="radio" name="placement" value="replace"> Replace Existing Text<br>
<input type="submit" value="Send" ></p>
</td>
<td><textarea name="outputtext" readonly rows="15" cols="22">


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select col1 from tname";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<%=resultSet.getString("col1") %>
<%
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



</textarea></td>
</tr></table>
</form>

<br><br>
<br><br>
<p style="color:white;">Click on the "Choose File" button to upload a file:</p>

<form>
  <input type="file" id="myFile" name="filename">
  <input type="submit">
</form>




                            </div>
                        </div>
                    </div>
                </div>
            </div>





</body>
</html>



