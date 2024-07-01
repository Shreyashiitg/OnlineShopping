<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      String query1="select * from user where username='"+username+"' and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         String  user = rs.getString(2);
         String  email = rs.getString("email");
         
            session.setAttribute("user",user);
            session.setAttribute("email", email);
            
            System.out.println("User:"+username);
            
                  
         response.sendRedirect("userhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=You are not Authorised User");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in studentact"+e.getMessage());
        }
%>