
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


        <%
        
        String productname = request.getParameter("pname");
        
        PreparedStatement ps=connection.prepareStatement("delete from products where productname = '"+productname+"'");
        ps.executeUpdate();
        
        response.sendRedirect("viewproducts.jsp?msg=sucess");
        
  %>
        
        