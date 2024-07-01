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
       <script>alert('Registered Successfully..!');</script>
       <%}%>
        <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('You are not Authorised User..!');</script>
       <%}%>
        
        <div class="main">
        <div class="header">
        <div class="header_resize">

         
        <center><h1 style="font-size: 50px"><b>Online Shopping</b></h1></center><br/><br/>
         
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="index.html"><span>Home Page</span></a></li>
        <li><a href="admin.jsp">Supplier</a></li>
        <li class="active"><a href="user.jsp">Purchaser</a></li>
        <li><a href="register.jsp">Registration</a></li>
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
        <center><p><font color="black" size="5"> Purchaser Login</font></p></center>

        <p><center>
         
        <form name="myform" action="useract.jsp" method="post">
            
        <table border="0" >

        <tr><td><font color="black"> UserName</td><td><input type="text" name="username" required="" /></td></tr>
        <tr><td><font color="black">Password</td><td><input type="password" name="password" required="" /></td></tr>
        
        <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" Login " /></td></tr>
        <tr></tr>      
        
        </table>
        </form>
        </center>
    
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        <h2 class="star"><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="index.html">Home</a></li>
        <li><a href="admin.jsp">Supplier</a></li>
        <li><a href="user.jsp">Purchaser</a></li>
         
        <li><a href="register.jsp">Register</a></li>
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
