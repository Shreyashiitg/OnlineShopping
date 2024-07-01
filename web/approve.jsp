<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page import="Mail.Mail"%>

  <%

                       
            String username = request.getParameter("uname");
            String productname = request.getParameter("pname");
            String qty = request.getParameter("qty");
            int qty1 = Integer.parseInt(qty);
            
            String query1 = "select * from user where username = '"+username+"'";
            Statement st2 = connection.createStatement();
            ResultSet rs2 = st2.executeQuery(query1);
            String email = null;
            if(rs2.next()){
            email = rs2.getString("email");
            }
            
            String query = "select * from products where productname = '"+productname+"'";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            int quantity = 0;
            if(rs.next()){
            quantity = rs.getInt("quantity");
            }
            
            
            try {
                
            if(qty1<quantity){
            
            Statement st1=connection.createStatement();
            int j = st1.executeUpdate("update cart set status='Approved' where username='"+username+"' and productname ='"+productname+"'  ");
            
            response.sendRedirect("viewrequests.jsp?msg=success");
           
            }                  
                else {
                Statement st1=connection.createStatement();
                int j = st1.executeUpdate("update cart set status='No Stock' where username='"+username+"' and productname ='"+productname+"'  ");
            
                
                String msg ="Stock not Available";
                Mail m = new Mail();
                m.secretMail(msg, email, email);

                
                  response.sendRedirect("viewrequests.jsp?msg1=Failed");
               }
                 
            } catch (Exception e) {
                       e.printStackTrace();
                   }

           %>