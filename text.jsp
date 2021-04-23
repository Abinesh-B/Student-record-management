<%@ page import="java.sql.*"%>
<% 
String fname=request.getParameter("inputtext");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/datause","root","");
    
    PreparedStatement st = con.prepareStatement("insert into tname values(?)");
    st.setString(1,fname);
    int x=st.executeUpdate();
    Statement stmt = con.createStatement();
    if(x>0)
    {
         response.sendRedirect("http://localhost:8080/Firstproject/data%20added.html") ;
    }
    else
    {
     out.println("Registration failed");
    }
}catch(Exception e){
	out.println(e);
}
%>