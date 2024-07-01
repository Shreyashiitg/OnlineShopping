<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Shopping</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
      
     <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Success..!');</script>
    <%}%>
    
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
    <%@ page import="org.bouncycastle.util.encoders.Base64"%>

 
    
        <div class="main">
        <div class="header">
        <div class="header_resize">

         
        <center><h1 style="font-size: 50px"><b>Online Shopping</b></h1></center><br/><br/>
         
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="adminhome.jsp"><span>Home </span></a></li>
        <li class="active"><a href="#.jsp">Admin</a></li>
        <li><a href="admin.jsp">Logout</a></li>
        </ul>
        </div>
        <div class="clr"></div>
        <div class="slider">
        <div id="coin-slider"> 
        <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
        </div>
        <div class="clr"></div>
        </div>
        </div>
        <div class="content">
        <div class="content_resize">
        <div class="mainbar">
        <div class="article">
        
            
    
    <table width="601" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >

<%
    String productname = request.getParameter("pname");
    String s1,s2,s3,s4,s5,s6;
  
    try{
       
	Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from products where productname = '"+productname+"'");
       if ( rs1.next() )
                    {
                            
                            s1=rs1.getString(2);
                            s2=rs1.getString(3);
                            s3=rs1.getString(5);
                            s4=rs1.getString(4);
                            s5=rs1.getString(7);
                            s6=rs1.getString(8);


                    %>
                    <center><h2><font color="green" size="5">  Product Details</font></h2></center>
                <br/><br/>
        <form action="updateproducts.jsp" method="post">          
        <tr>
        <td width="76" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
        <img height="130" width="120" src="Product Images\<%=s5%>"></img></div></td>
        </tr>
     
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black"> Category : </font></strong></div></td>
	<td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
        <input type="text" name="category" size="25" readonly="" value="<%out.println(s1);%>"> </div></td>
        </tr>
        
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Product Name : </font></strong></div></td>
        <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="productname" size="25" readonly="" value="<%=productname%>"></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Price : </font></strong></div></td>
        <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="price" size="25"  readonly="" value="<%out.println(s3);%>"></div></td>
        </tr>
        
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Description : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <textarea name="description" cols="26" readonly=""><%out.println(s4);%></textarea></div></td>
        </tr>
        <tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black">Quantity : </font></strong></div></td>
        <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
        <input type="text" name="qty" size="25" required="" Placeholder="Quantity"/></div></td>
        </tr>
        <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
        <strong><font color="black"> </font></strong></div></td>    
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><input type="submit" value="Update"/> </div></td>
        </tr>
        </form>
        </table>

        <br/><br/>
        <center><a href="viewproducts.jsp"><font size="4" color="green">Back</font></a></center>
        <br/><br/>
        
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        
        <h2 class="star"><span>Supplier</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="adminhome.jsp">Home</a></li>
        <li><a href="viewusers.jsp">View all Users & Activate</a></li>
        <li><a href="addcategory.jsp">Add Category</a></li>
        <li><a href="addproducts.jsp">Add Products</a></li>
        <li><a href="viewproducts.jsp">View all Products</a></li>
        <li><a href="viewrequests.jsp">View Requests</a></li>         
        <li><a href="adminviewpurchasedproducts.jsp">View Purchased Products </a></li>
        <li><a href="admin.jsp">Logout</a></li>
        </ul>
        </div> 
        </div>
        <div class="clr"></div>
        </div>
        </div>

        <div class="footer">
        <div class="footer_resize">
        <p class="rf"></p>
        <div style="clear:both;"></div>
        </div>
        </div>
        <%

                }
                connection.close();
        }
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>
        </div>
    
</body>
</html>
    
