<%@ page import="java.sql.*"%>
<% 
String mail=request.getParameter("rollname");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
    PreparedStatement st = con.prepareStatement("select c_id from caretaker where c_id=?;");
    st.setString(1,mail);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
    	response.sendRedirect("http://localhost:8080/Firstproject/register.html");
    }
    else
    {
    	response.sendRedirect("http://localhost:8080/Firstproject/search.html");
    }
    con.close();
}
catch(Exception e){
	out.println(e);
}
%>