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
       <script>alert('Failed..!');</script>
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
        <li><a href="user.jsp">Purchaser</a></li>
         
        <li class="active"><a href="register.jsp">Registration</a></li>
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
        <p align="justify">
        <center><p><font color="black" size="5">  Registration</font></p></center>
        <form name="myform" action="registeract.jsp" method="post" id="" >
        <center><table width="351">
        <tr>
        <td height="43"><font color="black">Select Type</td>
        <td><select id="s1" name="type" style="width:170px;" required="">
        <option value="">--Select--</option>
        <option value="Supplier">Supplier</option>
        <option value="Purchaser">Purchaser</option>
        </select></td>
        </tr>        
        <tr>
        <td width="191" height="43"><font color="black">User Name </td>
        <td width="218"><input id="username" name="username" required="" placeholder="User Name" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Password </td>
        <td width="218"><input type="password" id="password" name="password" required="" placeholder="Password" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black"> Email ID</td>
        <td><input id="email" name="email" required="" placeholder="Email ID"/></td>
        </tr>

        <tr>
        <td height="43"><font color="black">Date Of Birth</td>
        <td><input type="date" name="dob" style="text-align:right" required="" ></td></label>
        </td>
        </tr>
        <tr>
        <td height="43"><font color="black">Select Gender</td>
        <td><select id="s1" name="gender" style="width:170px;" required="">
        <option>--Select--</option>
        <option>MALE</option>
        <option>FEMALE</option>
        </select></td>
        </tr>
        <tr>
        <td height="65"><font color="black">Address</td>
        <td><input id="address" name="address" required="" placeholder="Address"></input></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Mobile Number </td>
        <td><input id="mobile" name="mobile" required="" placeholder="Mobile Number"/></td>
        </tr>
        <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="REGISTER" />
        </p>
        <div align="right">
        </div></td>
        </tr>
        </table>
        </form>
        </p>
    
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
