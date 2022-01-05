<%-- 
    Document   : cart
    Created on : 23 Jul, 2019, 10:38:41 PM
    Author     : hp
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="java.sql.*"%>
<%@page import="db.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  <title>Store</title>
  <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
  <script type="text/javascript">
  function order(){
  alert("Your order has been placed :-)");
  }
function inc1(){
var x = document.getElementById("appendedInputButtons").value;
x++;
document.getElementById("appendedInputButtons").value = x;
var y =document.getElementById("text2").value;
var z = y*x;
document.getElementById("text3").value = z;
}
function dec1(){
var x = document.getElementById("appendedInputButtons").value;
x--;
if(x<0)
{
document.getElementById("dec").style.disabled=true;
x=0;
}
else
document.getElementById("appendedInputButtons").value = x;
var y =document.getElementById("text2").value;
var z = x*y;
document.getElementById("text3").value = z;
}
function rem1(){
document.getElementById("prod").style.visibility="hidden";

}


</script>

  
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  <!-- FancyBox -->
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css">
  
  <!-- Stylesheets -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">
  
	<style>
	#button
	{
	text-decoration:none;
	border-radius:25px;
	background-color:#777777;
	color:#FFFFFF;
	height:50px;
	width:300px;
	}
	
	</style>	


  </head>
  
          
    <body>
        <header class="main-header">
            <nav class="main-nav nav">
                <ul>
                    <li><a href="index.jsp">HOME</a></li>
                    <li></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                </ul>
            </nav>
            <h2 class="band-name band-name-large">Store</h2>
        </header>
						
						<li class="item">
                              <div class="icon-box">
                                    <img src="shopping-cart-icon-30.png" height="30" width="30" />
                              </div>
							  <a href="#">
                              <strong>Cart</strong>
							  </a>
                              <br>
                              
                                    <span>See your orders here</span>
                              
                        </li>
                        
                  </ul>
                  
            </div>
      </div>
</section>
<!--Header Upper-->


<!--Main Header-->
<nav class="navbar navbar-default">
      <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                  </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                  
            </div>
            <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
</nav>
	<div class="well well-small">
		
	<hr class="soften"/>	
	<div>

  	<table class="table table-bordered table-condensed" cellpadding="30" cellspacing="0" >

              <thead>
                <tr class="cartCheckout">
                  <th class="cartCheckout">Product</th>
                  <th class="cartCheckout">Description</th>				  
                  <th class="cartCheckout">Unit price</th>
                  <th class="cartCheckout">Qty </th>
                  <th class="cartCheckout">Total</th>
				</tr>
              </thead>
              <tbody>  
 --%>
 <%-- 
    Document   : storeJ
    Created on : 25 Jul, 2019, 2:20:31 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="java.sql.*"%>
<%@page import="db.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Store</title>
        <meta name="description" content="This is the description">
        <link rel="stylesheet" href="styles.css" />
        <script src="store1.js" async></script>  
        <style>
            .dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
     <!--  <script>
       function order(){
  alert("Thank you for your Purchase!");
  }
function inc1(){
var x = document.getElementById("appendedInputButtons").value;
x++;
document.getElementById("appendedInputButtons").value = x;
var y =document.getElementById("text2").value;
var z = y*x;
document.getElementById("text3").value = z;
}
function dec1(){
var x = document.getElementById("appendedInputButtons").value;
x--;
if(x<0)
{
document.getElementById("dec").style.disabled=true;
x=0;
}
else
document.getElementById("appendedInputButtons").value = x;
var y =document.getElementById("text2").value;
var z = x*y;
document.getElementById("text3").value = z;
}
function rem1(){
document.getElementById("prod").style.visibility="hidden";

}


</script>
<style>
	#button
	{
	text-decoration:none;
	border-radius:25px;
	background-color:#777777;
	color:#FFFFFF;
	height:50px;
	width:300px;
	}
	
	</style>	 -->
    </head>
    <body>
          <% 
    try
			{   
                            String s5 = request.getParameter("name");
                            HttpSession ss = request.getSession(true);
                            ss.setAttribute("name",s5);
                            
                           
                        
		%>
        <header class="main-header">
            <nav class="main-nav nav">
                <ul>
                     <div class="dropdown">
    <button class="dropbtn">Welcome <%=s5%> 
    <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="home.jsp">Home</a>
      <a href="logout.jsp">Logout</a>
      
    </div>
  </div> 
                   
                 <!-- <li class="nav-item submenu dropdown">
		<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome <%=s5%></a>
                <ul class="dropdown-menu">
		<li class="nav-item">
		<a class="nav-link" href="home.jsp">Home</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="logout.jsp">Logout</a>
		</li>

			</ul>
			</li>  -->
            	
                 </ul>
            </nav>
            <h2 class="band-name band-name-large">Store</h2>
        </header>
        
        <section class="container content-section">
                  <!-- try -->
                  <%  int i=0;
                    int total=0;
                    int inte1,inte2,temp=0,prod=0;
                    {		
			ResultSet rs = db.dbcon.st.executeQuery("select * from cart");
                        while(rs.next())
                        {
                         String s1 = rs.getString("product_name");
                         String s2 = rs.getString("description");
                         String s7 = rs.getString("pathi");
                          System.out.println(s7);
 String s9=config.getServletContext().getRealPath("/");

// String path=s1+"Example\\image-folder\\";
 //String path="\\Example\\image-folder\\";
String path="EXAMPLE/image-folder/";
 path=path+rs.getString("pathi");
   // out.println("  "+path);
    
                         inte1 =rs.getInt("unit_price");
                         inte2 = rs.getInt("quantity");
                         temp = inte1*inte2;
                         i++;
                         
                         %>
     <%--         <div id="prod">
                  <tr class="cartCheckout">
                    
                <td class="cartCheckout"><%=s1%></td>
                <td class="cartCheckout"><%=s2%></td>
                <td class="cartCheckout"><input type="text" size="5" id="text2" value="<%=s3%>"/></td>
                   
                  <td class="cartCheckout">
					<input class="span1" style="max-width:34px"  placeholder="1" id="appendedInputButtons" size="16" type="text" value="1">
				  <div class="input-append">
					<button class="btn btn-mini" type="button" id="dec" onClick="dec1();">-</button><button class="btn btn-mini" type="button" id="inc" onClick="inc1();"> + </button>
					<br />
                                        <form action="cart_del">
                                        
					<br>Remove <input type="submit" onClick="rem1()" value="-">
                                        </form>
				</div>
				</td> <% 
                     total=total+temp;
                     prod=prod+inte2;
                       
                        
                  %> 
                                <td class="cartCheckout"><input type="text" size="5"  id="text3" value="<%=s3%>"  class="text"/></td>
                 
                </tr>
                </div>
              --%>
              
                  
                 <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title"><%=s1%></span>
                    <img class="shop-item-image" src="<%=path%>">
                    <div class="shop-item-details">
                        <span class="shop-item-price" >$12 <!--<input type="text" size="5" id="text2" value="<%=inte1%>"/>--></span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
              <!--  <div class="shop-item">
                    <span class="shop-item-title">Herbal Moisturiser</span>
                    <img class="shop-item-image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS8waFd3f24qgGYhfWxmUPOCUFKUDv0BGbgyQJ-U1QsZ65Ta4l3w">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$14.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Ibuprofen Capsules</span>
                    <img class="shop-item-image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEuj3Cd7MNA_HStI1ppUqcRY1irqzvce8xlWkf_XYjRnOpjcDN">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$9.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                </div> 
		
                -->
                <% }
                     total=total+temp;
                %>
                                
                 <%--   <tr class="cartCheckout">
                        <td colspan="4" class="alignR">Total products:  <input type="text" value="<%=i%>" size="5" class="text"/>	</td>
                        <td><input type="text" value="" class="text" /></td>
                </tr>
                 --%>
                 </section>
              <section class="container content-section">
           <h2 class="section-header">CART</h2>
           <div class="cart-row">
               <span class="cart-item cart-header cart-column">ITEM</span>
               <span class="cart-price cart-header cart-column">PRICE</span>
               <span class="cart-quantity cart-header cart-column">QUANTITY</span>
           </div>
           <div class="cart-items">
           </div>
           <div class="cart-total">
          <!--   Total<input type="text" name="tinput" value="<%=total%>" />  -->
               
              
              <strong class="cart-total-title">Total</strong>
              <span class="cart-total-price">$0</span>
           </div>
                
                 <%
                 
                 
                   
                  //  prod=prod+inte2;
                       
                        
                                 
                                        
                                       
		        rs.close();
}
                       
                        }catch(Exception e){System.out.println("EXC "+e);}
     		%>
			<button class="btn btn-primary btn-purchase" type="button" onClick="order();">PURCHASE</button>
       </section>
    </body>
</html>

<%-- <table align="center" height="100px">
				<tr>
					<td colspan="4"><input type="button" value="PLACE ORDER" id="button" onClick="order();")/></td>
				</tr>
			
				<tr>
					<td colspan="4"><center><font color="#000000" ><a href="pnewaddress.html">Change Address</a></font></center></td>
				</tr>
			</table>
                </tbody>
            </table><br/>
            <footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-2  col-md-6">
					<div class="single-footer-widget">
						<h6>Top Products</h6>
						<ul class="footer-nav">
							<li>
								<a href="#">Managed Website</a>
							</li>
							<li>
								<a href="#">Manage Reputation</a>
							</li>
							<li>
								<a href="#">Power Tools</a>
							</li>
							<li>
								<a href="#">Marketing Service</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4  col-md-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Contact Us</h6>
						<p>
							56/8, Santa bullevard, Rocky beach, San fransisco, Los angeles, USA
						</p>
						<h3>012-6532-568-9746</h3>
						<h3>012-6532-568-97468</h3>
					</div>
				</div>
				<div class="col-lg-6  col-md-12">
					<div class="single-footer-widget newsletter">
						<h6>Newsletter</h6>
						<p>You can trust us. we only send promo offers, not a single spam.</p>
						<div id="mc_embed_signup">
							<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="form-group row">
									<div class="col-lg-7 col-md-6 col-sm-12">
										<input name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
										 required="" type="email">
									</div>

									<div class="col-lg-5 col-md-12">
										<button class="nw-btn main_btn circle">get started
											<span class="lnr lnr-arrow-right"></span>
										</button>
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#">
						<i class="fa fa-facebook"></i>
					</a>
					<a href="#">
						<i class="fa fa-twitter"></i>
					</a>
					<a href="#">
						<i class="fa fa-dribbble"></i>
					</a>
					<a href="#">
						<i class="fa fa-behance"></i>
					</a>
				</div>
			</div>
		</div>
	</footer>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/custom.js"></script>		
			
    </body>
</html>  --%>

