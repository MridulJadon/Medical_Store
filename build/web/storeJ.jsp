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
       <!-- <script src="store1.js" async></script>  -->
       <script>
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
                    <li><a href="index.html">HOME</a></li>
                    <li>STORE</li>
                    <li><a href="about.html">ABOUT</a></li>
                </ul>
            </nav>
            <h2 class="band-name band-name-large">Store</h2>
        </header>
        
        <section class="container content-section">
             <% 
    try
			{
                            int i=0;
			
			
			ResultSet rs = db.dbcon.st.executeQuery("select * from cart");
                        while(rs.next())
                        {
                         String s1 = rs.getString("product_name");
                         String s2 = rs.getString("description");
                         String s3 ="" +rs.getInt("unit_price");
                         i++;
                        
		%>
              <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title"><%=s1%></span>
                    <img class="shop-item-image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY_hdDXcNU6sT3eLXkuUmNGdJWFZ2fW14VdEeHJuwCEodJcVYP">
                    <div class="shop-item-details">
                        <span class="shop-item-price"><input type="text" size="5" id="text2" value="<%=s3%>"/></span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
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
                         <% 
                        }
                        
                  %> 
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
               <strong class="cart-total-title">Total</strong>
               <span class="cart-total-price"><input type="text" value="<%=i%>" size="5" class="text"/></span>
           </div>
           <%
                 
                                        
                                        
                                        
		        rs.close();
                       
                        }catch(Exception e){System.out.println("EXC "+e);}
     		%>
           <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
       </section>
    </body>
</html>
