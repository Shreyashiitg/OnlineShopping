
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


        <%
        String user=session.getAttribute("user").toString();
        String productname = request.getParameter("pname");
        
        
        PreparedStatement ps1=connection.prepareStatement("delete from cart where productname = '"+productname+"' and username  = '"+user+"'");
        ps1.executeUpdate();
        
        response.sendRedirect("viewcartproducts.jsp?msgg=sucess");
        
  %>
        
        