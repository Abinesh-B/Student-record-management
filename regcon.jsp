<%@ page import="java.sql.*"%>
<% 
String fname=request.getParameter("fname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String password=request.getParameter("password");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String city=request.getParameter("city");
String state=request.getParameter("state");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    PreparedStatement st = con.prepareStatement("insert into studentreg values(?,?,?,?,?,?,?,?)");
    st.setString(1,fname);
    st.setString(2,gender);
    st.setString(3,dob);
    st.setString(4,password);
    st.setString(5,email);
    st.setString(6,mobile);
    st.setString(7,city);
    st.setString(8,state);
    int x=st.executeUpdate();
    if(x>0)
    {
    	response.sendRedirect("http://localhost:8080/SRMS/login.jsp");
    }
    else
    {
    	response.sendRedirect("http://localhost:8080/SRMS/register.html");
    }
    con.close();
}
catch(Exception e){
	out.println(e);
}
%>