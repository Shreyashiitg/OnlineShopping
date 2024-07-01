
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


        <%
        String user=session.getAttribute("user").toString();
        String email=session.getAttribute("email").toString();
        String category = request.getParameter("category");
        String productname = request.getParameter("productname");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        String brand = request.getParameter("brand");
        String qty = request.getParameter("qty");
        String sname = request.getParameter("sname");
        int qty1 = Integer.parseInt(qty);
        String status = "Waiting";
        
        PreparedStatement ps1=connection.prepareStatement("insert into cart (username,category,productname,price,image,brand,status,quantity,email,sname) values ('"+user+"','"+category+"','"+productname+"','"+price+"','"+image+"','"+brand+"','"+status+"',"+qty1+",'"+email+"', '"+sname+"')");
        ps1.executeUpdate();
        
        response.sendRedirect("uviewproducts.jsp?m1=sucess");
        
  %>
        
        