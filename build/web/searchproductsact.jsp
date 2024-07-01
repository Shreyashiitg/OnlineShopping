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
     
    <%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

        <%
       String user=session.getAttribute("user").toString();
       %>
    
        <div class="main">
        <div class="header">
        <div class="header_resize">

         
        <center><h1 style="font-size: 50px"><b>Online Shopping</b></h1></center><br/><br/>
         
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="userhome.jsp"><span>Home </span></a></li>
        <li class="active"><a href="#.jsp"><%=user%></a></li>
        <li><a href="user.jsp">Logout</a></li>
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
        
            <br/>
            
           <h1><font color="green" >Search Results</font></h1><br/> 

<%
    String category = request.getParameter("category");
    String s1,s2,s3;
   int j=0;
    try{
       
	Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from products where category like '%"+category+"%' ");
       while ( rs1.next() )
                    {
                            j=rs1.getInt(1);
                            s1=rs1.getString(2);
                            s2=rs1.getString(3);
                            s3=rs1.getString(7);


                    %>
                    
                     
                    
           <center><table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
               
           <tr>
           <td width="96" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
           <img height="100" width="100" src="Product Images\<%=s3%>"></img></div></td>
           </tr> 
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="black" >Product Name : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <input type="text" name="location" id="location" size="12" readonly="" value="<%out.println(s2);%>"></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="black" >View Details : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <a href="productdetails.jsp?productname=<%=rs1.getString(3)%>"><font color="green">View Details</font></a>
           </div></td>
           </tr>
           <br/>
           <%}%>
            
       
            </table>

        <br/><br/><br/><br/><br/><br/><br/> 
        <a href="searchproducts.jsp"><font size="4" color="red">Back</font></a>
      
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
      
        <h2 class="star"><span>User</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="managebankacount.jsp">Manage Bank Account</a></li>
        <li><a href="uviewproducts.jsp">View Products</a></li>
         
        <li><a href="viewcartproducts.jsp">Purchase Cart Products</a></li>
        <li><a href="viewpurchasedproducts.jsp">My Purchased Products</a></li>
        <li><a href="user.jsp">Logout</a></li>
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
                
      //  PreparedStatement ps4=connection.prepareStatement ("insert into userintention (username,category) values ('"+user+"','"+category+"')");
       // ps4.executeUpdate();
                  
        %>   
           
        <%
        }
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>
        </div>
        
</body>
</html>
    
