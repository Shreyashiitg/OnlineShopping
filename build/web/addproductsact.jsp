<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String user  = session.getAttribute("user").toString();
    String category = request.getParameter("category");
    String productname = request.getParameter("productname"); 
    String description = request.getParameter("description");
    String price = request.getParameter("price");
    String brand = request.getParameter("brand"); 
    String pic = request.getParameter("pic");
    String qty = request.getParameter("qty");
    int qty1 = Integer.parseInt(qty);
     try{

    PreparedStatement ps=connection.prepareStatement("insert into products (category,productname,description,price,brand,image,quantity,sname) values(?,?,?,?,?,?,?,?)");

    ps.setString(1,category);
    ps.setString(2,productname);
    ps.setString(3,description);
    ps.setString(4,price);
    ps.setString(5,brand);
    ps.setString(6,pic);
    ps.setInt(7,qty1);
    ps.setString(8,user);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addproducts.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addproducts.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>