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
       if (request.getParameter("m1") != null) {%>
       <script>alert('Request Sent to Supplier..!');</script>
       <%}%> 
       
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
        
            
        <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%
	String s1,s2,s3,s4,s5,s6;
	int j=0,m=0,rank=0;
	try 
	{
	ArrayList al=new ArrayList();
	
	String sql2="select * from products"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		//j=rs2.getInt(1);
		s1=rs2.getString(3);
		s2=rs2.getString(2);
                s3=rs2.getString(7);
                s4=rs2.getString(9);

		
		al.add(s1);
		
		if(m==0){
		%>
                
                <center><h2><font color="green" size="5"> View All Products</font></h2></center>
                <br/><br/>
            <table width="551" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
            <tr>
            <td  width="101" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong> Image </strong></div></td>
            <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Product Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Category </strong></div></td>
            <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Supplier Name </strong></div></td>    
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>View Details </strong></div></td>
            
            </tr>
                    <%}%>
                    
                    
        <form action="uviewproductdetails.jsp?pname=<%=s1%>" method="post">           
        <tr>
        <td width="101"><img height="100" width="100" src="Product Images\<%=s3%>"></img></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s1);%></div></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s2);%></div></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s4);%></div></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><input type="submit" value="View Details"/> </div></td>
        </form>
        </tr> 

            </form>
            <%m=2;
            }

            if(al.isEmpty())
            {
            %>
            <br/><br/><br/><br/><br/><br/>
            
            <center><h2 class="style6">Sorry..!! Nothing To Display</h2></center>
            <%}
             String msg=(String)application.getAttribute("msg");
             if(msg!=null){
             %><h3 class="style8"> <%=msg%></h3> 
              <%
             application.removeAttribute("msg");
            }
             %>

        <%
            connection.close();

            }
            catch(Exception e)
            {
                    out.println(e.getMessage());
            }
            %>
      </table>
        <br/>
            
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
        </div>
        
</body>
</html>
    
