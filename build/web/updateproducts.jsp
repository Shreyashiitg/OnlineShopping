
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
        <%@page import="Mail.Mail"%>

        <%
        
        String category = request.getParameter("category");
        String productname = request.getParameter("productname");
        String qty = request.getParameter("qty");
        int qty1 = Integer.parseInt(qty);
        
        
        
        PreparedStatement ps1=connection.prepareStatement("update products set quantity = "+qty1+" where productname = '"+productname+"' and category = '"+category+"'");
        ps1.executeUpdate();
        
        String query1 = "select * from cart where productname = '"+productname+"'";
        Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery(query1);
        String email = null;
        while(rs1.next()){
        email = rs1.getString("email");
                
        String msg ="Stock Available";
        Mail m = new Mail();
        m.secretMail(msg, email, email);
        }
        response.sendRedirect("viewproductdetails.jsp?msg=sucess");
        
  %>
        
        