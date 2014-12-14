<%-- 
    Document   : AdminMenu
    Created on : Dec 10, 2014, 6:38:11 AM
    Author     : User
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="Js/index_javascript.js"></script>
<meta charset="utf-8">
<title>Admin Menu</title>
<link rel="stylesheet" type="text/css" href="Css/index_css.css">
</head>

<body>

<header>
<div id="index_image">
<!---------MENU START--------------->
     <a href="#"><img src="Images/JJ_logo.png" id="logo"></a><!--------LOGO: height and width 100 px ---------->
     <nav>
    	<ul>
          <li><a href="News">Blog</a></li>
          <li><a href="WebshopController">Webshop</a></li>
          <li><a href="brugtevarer.jsp">Brugte Varer</a></li>
          <li><a href="registrer.jsp">Registrer</a></li>
		</ul>
    </nav> 
    <div id="log_ind" >
        <c:choose>
            <c:when test="${empty user}">         
                <ul>
                    <li id="login">
                        <a id="login-trigger" href="#">
                            Log in <span>&#x25BC;</span>
                        </a>
                        <div id="login-content">
                            <div id="login_triangle"></div>

                            <form method="post" action="LoginUser">

                                <div id="login_box">

                                    <div><label for="name" id="login_text">Brugernavn: </label><br><input type="text" name="email" id="username" class="login_field"/></div>  
                                    <div class="glemt"><a href="#">Glemt brugernavn?</a></div><br>

                                    <div><label for="surname" id="login_text">Kode: </label><br><br><input type="password" name="password" id="password" class="login_field"/></div>
                                    <div class="glemt"><a href="#">Glemt adgangskode?</a></div><br>

                                    <div id="opret"><a href="registrer.jsp">Opret ny bruger</a></div>
                                    <div><input id="login_button" type="submit" value="Login"></div>
                                </div>

                            </form>
                        </div>                     
                    </li>

                </ul>
            </c:when>
            <c:when test="${not empty user}">Logget ind som: <span id="id" onClick='javascript:test("${user.getUserId()}");'>${user.getFirstName()}</a></c:when>
        </c:choose>
            <script>
            function test(userid) {
                document.location.href = "memberInfo.jsp?user=" + userid;
            }
            </script>
    </div>
<!---------MENU END----------------->
</div>
</header>

<article>
<!----------------------------------------------------------- COLUMN START --------------------------------------------------------------------->
  <div id="column_box">
  	<div id="column_content">
  	<!-----------CONTENT 1 START-------------->
    	<input id="menu" type="button" class="button" value="Menu" onClick="redirect()"><!-------Change value to headline from database---->
    	<div> 
        <div class="column_text">
            <a href="NewArticle.jsp">New article</a>
            <br>
            <a href="NewBlog.jsp">New blog</a>
            <br>
            <a href="AdminProducts.jsp">New product</a>
            <br>
            Edit product
            <br>
            <a href="AllUsersList.html">Edit User</a>
            <br>
        </div>
        </div>
        <script>
            function redirect() {
                document.location.href = "AdminMenu.jsp";
            }
        </script>
    <!-----------CONTENT 1 END---------------->
    
    </div>
   <div id="column_space"></div>  
   
  <div id="column_info_box">
	<div id="info_text">
		<img src="Images/phone.png" ><span style="padding-left:15px">11 22 33 44</span>
        <br><br>
		<img src="Images/mail.png"><span style="padding-left:15px">example@gmail.com</span>
	</div>
</div>
  </div>
<!----------------------------------------------------------------- COLUMN END ---------------------------------------------------------------->


<!------------------------------------------------------------ CONTENT BOXES START ------------------------------------------------------------>    
<div id="content"><br>
<!-------------- BOX 1 START --------------->
        <div class="admin_box"></div>
        <div class="admin_headline">Create a new product</div>
        <br><br>
        <div class="admin_content">
                        Create product page here later.
        </div></div>
        	
<!-------------- BOX 1 END --------------->

<!------------------------------------------------------------ CONTENT BOXES END ------------------------------------------------------------>
<!-------------------------------------------------------------- INFO BOX START ------------------------------------------------------------->


</article>
<!--------------------------ARTICLE END------------------------>


<!--------------------------FOOTER START------------------------>
<footer>
<!---------MENU START--------------->
     <div class="footer_menu">
    	<ul>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Webshop</a></li>
          <li><a href="#">Brugte Varer</a></li>
          <li><a href="#">Registrer</a></li>
		</ul>
    </div> 
<!---------MENU END----------------->

<div id="social_meadia">
	<a href="#"><img src="Images/facebook.jpg"></a>
	<a href="#"><img src="Images/twitter.jpg"></a>
</div>

<!----------HOW DO I MOVE THIS FARTHER AWAY FROM TOP???? MARGIN / PADDING DOESN'T WORK------------------>
<div id="copyright">
Copyright quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat
</div>

</footer>

</body>
</html>