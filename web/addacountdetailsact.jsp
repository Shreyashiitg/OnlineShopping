<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
     
     String username = request.getParameter("username"); 
     String branch = request.getParameter("branch");
     String email = request.getParameter("email"); 
     String address = request.getParameter("address");
     String mobile = request.getParameter("mobile");
     String amount = request.getParameter("amount");
     try{

      PreparedStatement ps1=connection.prepareStatement("insert into accountdetails (username,branch,email,address,mobile,amount) values ('"+username+"','"+branch+"','"+email+"','"+address+"','"+mobile+"','"+amount+"')");
      int i=ps1.executeUpdate();
      if(i>0)
      {
      response.sendRedirect("addacountdetails.jsp?m1=sucess");
  }
                                
  %>
    
    <%

                }
               
        
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>