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
            <br/><br/>
          <p>
	   
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

<%@ page import="java.util.Date" %>
<%@ page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
	
		<%
	String s1,s2,s3,s4,s5;
	int m=0;
	try 
	{
	ArrayList al=new ArrayList();
	
        String user = session.getAttribute("user").toString();
	String sql2="select * from purchasedproducts where sname = '"+user+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		
		s1=rs2.getString(3);
		s2=rs2.getString(2);
                s3=rs2.getString(4);
                s4=rs2.getString(5);
                s4=rs2.getString(5);
                s5=rs2.getString(6);
                

		
		al.add(s1);
		
		if(m==0){
		%>
                
               <h1><font color="green">All Purchased Products</font></h1>
                <br/><br/>
                
            <table width="601" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
            <tr>
            <td  width="101" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong> Image </strong></div></td>
            <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Product Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Category </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Price </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Date </strong></div></td>

            </tr>
                    <%}%>
        <tr>
        <td width="101"><img height="100" width="100" src="Product Images\<%=s5%>"></img></td>
        <th width="101"> <a href="pdetails1.jsp?pname=<%=s1%>"><%=s1%></a></th>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s2);%></div></td>
        <td  width="115" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s3);%></div></td>
        <td  width="115" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s4);%></div></td>
        
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
		  </p>
        
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        
        <h2 class="star"><span>Supplier</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="adminhome.jsp">Home</a></li>
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
        </div>
        
</body>
</html>
