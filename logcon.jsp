<%@ page import="java.sql.*"%>
<% 
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    PreparedStatement st = con.prepareStatement("select email,password,fname from studentreg where email=? and password=?;");
    st.setString(1,email);
    st.setString(2,password);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
    	String mail=rs.getString(1);
    	String pass=rs.getString(2);
    	String name=rs.getString(3);
    	System.out.println(mail+" "+pass+" "+name);
    	HttpSession s=request.getSession();
    	response.sendRedirect("http://localhost:8080/Firstproject/register.html");
    }
    else
    {
    	response.sendRedirect("http://localhost:8080/Firstproject/login.jsp");
    }
    con.close();
}
catch(Exception e){
	out.println(e);
}
%>