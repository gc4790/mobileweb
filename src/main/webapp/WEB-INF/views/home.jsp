<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="static/js/angular.min.js"></script>
<script src="static/js/app.js"></script>
 <script src="static/js/auth/service/loginService.js"></script>
 <script src="static/js/auth/controller/loginController.js"></script>
 
</head>
<body >
<div ng-app="loginApp" ng-controller="loginController as logCtrl">
<input type="text" ng-model = "logCtrl.user.name">
<button value="Save" ng-click="logCtrl.validateUser()" >Save</button>
</div>
</body>
</html> -->

<script src="static/js/angular.min.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/auth/service/loginService.js"></script>
<script src="static/js/auth/controller/loginController.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="static/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href="static/css/common.css" rel="stylesheet" type="text/css"  media="all" />
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrap">
            <div class="topheader">
                <div class="qadbutton">
                    <a href="postaquickad.jsp?type=Individual" class="button">Post a Quick Ad</a>
                </div>
                <div class="logo">
                    <h1>Mobiles<span>NearMe</span></h1>
                </div>
                <div class="autoarea">
                    <input type="text" id="price" name="price"  value="Pune" placeholder="price" class="txt"/>
                 </div>
             </div>

             
             <div class="gap1"></div>



             <div class="clear"></div>
             
            <div class="container">
             <div class="menu-search">
                <div class="searchapp">
                    <form action="searchapp.jsp" method="get">
                        <input type="text" name="brand" id="search" placeholder="Search By Product Name" value="" class="txt1" onkeyup="suggetion(this);">
                        <br><br><br>
                        <div class="orspan"><span>OR</span></div>
                        <input type="submit" value="Go" class="gobutton1" name="go">

                        <br><br>
                        <input type="text" id="price" name="price" placeholder="price" class="txt"/>
                        <select name="os" id="os" class="txt2">
                            <option>Symbian Os </option>
                            <option>Android Os</option>
                            <option>blackberry os</option>
                            <option>iphone os </option>
                            <option>nashik</option>
                        </select><br>
                        <span>Warranty Phones only</span><input type="checkbox" name="war" value=""  />
                        
                    </form>
                         <a href="searchShop.jsp">Search Shops</a>
                    <div class="searchauto" id="suggetion">
                    </div>
                </div>
                <div class="brands">
                    <h4>Phones By Brands</h4>
                    <img src="images/facebook.png" id="Nokia" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="Samsung" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="MicroMax" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="Carbon" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="Blackberry" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="Apple" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="sony" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="HTC" class="icon" onclick="browseByBrand(this);">
                    <img src="images/facebook.png" id="LG" class="icon" onclick="browseByBrand(this);">
                </div>
                <div ng-app="loginApp" class="login-area" ng-controller="loginController as logCtrl">
                    <div class="login-head">
                        SHOP OR INDIVIDUAL LOGIN
                    </div><br><br>
                    <div  id="error" class="errmsg">

                        <span>Invalid Username,Password Combination</span>

                    </div>
                       
                    <div class="login-textarea">
                        <div class="login-name">Email</div>
                       
                        <div class="login-box">
                            <label><input type="text" ng-model="logCtrl.user.name" id="loguname" class="logintextbox"> </label>
                        </div>
                    </div>
                    <div class="login-textarea">
                        <div class="login-name">password</div>
                        <div class="login-box">
                            <label><input type="password" id="ip_login_logpasswd" ng-model="logCtrl.user.password" class="logintextbox"> </label>
                        </div>
                    </div>
                    <div class="login-textarea">
                    <input type="button" class="login" name="login" value="Login" ng-click="logCtrl.validateUser()">
                      
                        
                        <form action="shopregister.jsp" method="post"><input type="submit" class="register" name="register" value="Shop Register"></form><br>
                        <a href="forgetpasswd.jsp"  class="forpassw">forgot password?</a>
                            
                        <a href="individualregister.jsp" class="register">Individual Register</a><br>
                        
                        
                    </div>

                </div>
            </div>





            <div class="clear"></div>
                <div class="body-home">
                    <div id="top" class="pbox1">
                        <span class="fletter">Top Phones Near You</span>
                        <div class="left-side1">
                            <input type="button" value="<" class="side-buttons">
                        </div>
                        <div class="right-side1">
                            <input type="button" value=">" class="side-buttons">
                        </div>



                        <div class="top-phone">
                            <div class="shop-in-home">

                                <img src="GetBannerImage.jsp" class="shop-in-home">
                                
                                <img src="GetImage.jsp" class="shop-in-home">
                                
                            </div>
                            <div class="phone-pic1">
                                <a href="product.jsp"/>   <img src="GetDeviceImage.jsp" class="phone-pic"></a>
                            </div>
                            <div class="clear"></div>
                            <div class="phone-name">
                                <a href="product.jsp">  <span>Company</span>&nbsp;
                                    <span>Model</span></a>
                            </div>
                            <div class="qview">
                                <span>Price</span>
                                <input type="button" class="gobutton8" name="view" value="">
                            </div>
                        </div>
                       


                    </div>




                    <div class="pbox2">
                       


                        <span class="fletter">Busy Shop Near You</span>
                        <div class="left-side1">
                            <input type="button" value="<" class="side-buttons">
                        </div>
                        <div class="right-side1">
                            <input type="button" value=">" class="side-buttons">
                        </div>
                        <div class="top-phone1">
                            <div class="shop-in-home1">
                                <a href="shop.jsp">  <img src="GetImage.jsp" class="shop-in-home1"></a>
                            </div>
                            <div class="phone-name">
                                <a href="shop.jsp">  <h3>Name</h3></a>
                                <h4>Location</h4>
                            </div>
                        </div>
                        


                    </div>
                </div>

                <div class="clear"></div>


                <div class="flash">
                    <h1>Flash Space</h1>
                    <p>Anything Could be placed like recent updates,new features,existing features,ads etc</p>
                    <div class="left-side">
                        <input type="button" value="<" class="side-buttons">
                    </div>
                    <div class="right-side">
                        <input type="button" value=">" class="side-buttons">
                    </div>
                    <h3>Most viewed mobile phones</h3>

                    <div id="most_view" class="random-phone">
                        


                        <div class="top-phone2">
                            <div class="shop-in-home">
                                <img src="GetBannerImage.jsp" class="shop-in-home">
                                
                                <img src="GetImage.jsp" class="shop-in-home">
                                
                            </div>
                            <div class="phone-pic">
                                <a href="product.jsp">   <img src="GetDeviceImage.jsp" class="phone-pic"></a>
                            </div>
                            <div class="clear"></div>
                            <div class="phone-name">
                                <span> <a href="product.jsp> </a></span><br>
                            </div>
                            <div class="qview">
                                <span>Price</span>
                                <input type="button" class="gobutton8" name="view" value="">
                            </div>
                        </div>
   





                    </div>
                </div>


                <div class="clear"></div>

                <div class="info">
                    <div class="sell-phone">
                        <h1>Sell Your Phone</h1>
                        <a href="postaquickad.jsp" class="button2">Post a Quick Ad</a> <span> or </span>
                        <a href="individualregister.jsp" class="register2">Individual Register</a><br><br>
                        <span>To Explore More Ways and Features For Selling</span>
                    </div>
                    <div class="start-shop">
                        <h1>Start Your Shop</h1>
                        <span>Let The Whole World Be Your Market or</span><br>
                        <span> Your Shop Will Neva be Closed Again Open It 24*7</span>
                        <a href="shopregister.jsp" class="register1">Shop Register</a>
                    </div>
                    <span class="latest-span">Latest Added</span>
                </div>


   



                <div class="clear"></div>
                <div id="latest" class="phone">
                    <h1>Phones</h1>
                    <div class="left-side1">
                        <input type="button" value="<" class="side-buttons">
                    </div>
                    <div class="right-side1">
                        <input type="button" value=">" class="side-buttons">
                    </div>
   
                    <div class="top-phone">
                        <div class="shop-in-home">
                            <img src="GetBannerImage.jsp" class="shop-in-home">
                           
                        </div>
                        <div class="phone-pic">

                            <a href="product.jsp">  <img src="GetDeviceImage.jsp" class="phone-pic"></a>
                        </div>
                        <div class="clear"></div>
                        <div class="phone-name">
                            <span> <a href="product.jsp"> </a></span><br>
                        </div>
                        <div class="qview">
                            <span>Price</span>
                            <input type="button" class="gobutton8" name="view" value="">
                        </div>
                    </div>
                    


                </div>
                
                <div class="shop">
                    <h1>Shops</h1>
                    <div class="left-side1">
                        <input type="button" value="<" class="side-buttons">
                    </div>
                    <div class="right-side1">
                        <input type="button" value=">" class="side-buttons">
                    </div>
                
                    <div class="top-phone1">
                        <div class="shop-in-home1">
                            <a href="shop_2.jsp">     <img src="GetBannerImage.jsp" class="shop-in-home1"></a>
                        </div>
                        <div class="phone-name">
                            <a href="shop_2.jsp">   <h3>Shop</h3>
                                <h4>Address</h4></a>
                        </div>
                    </div>
                    





                </div>







                <div class="clear"></div>
                <div id="random" class="random-select">
                    <span>Random Phones In Your Area</span>
                    <div class="left-side">
                        <input type="button" value="<" class="side-buttons">
                    </div>
                    <div class="right-side">
                        <input type="button" value=">" class="side-buttons">
                    </div>
                    <div class="random-phone">
                        <div class="top-phone2">
                            <div class="shop-in-home">
                    
                                <img src="GetBannerImage.jsp" class="shop-in-home">
                                
                                <img src="GetImage.jsp" class="shop-in-home">
                                
                            </div>
                            <div class="phone-pic">
                                <a href="product.jsp">
                                    <img src="GetDeviceImage.jsp" class="phone-pic"></a>

                            </div>
                            <div class="clear"></div>
                            <div class="phone-name">
                                <span><a href="product.jsp"></a></span><br>
                            </div>
                            <div class="qview">
                                <span>Price</span>
                                <input type="button" class="gobutton8" name="view" value="">
                            </div>
                        </div>
                        



                    </div>
                </div>



                <div class="clear"></div>
                <div class="gen-info">
                    <div class="price-estimate">
                        <h1>Price Estimator App</h1>
                        <a href="priceestimatorapp.jsp" class="gobutton6">Estimate Price</a>
                    </div>
                    <div class="gen">

                        <div class="expect">
                            <h1>Alert Me Suggestions</h1>
                            <h4>(Register Alert to Get Noticed Via SMS)</h4>
                            <div class="left-side1">
                                <input type="button" value="<" class="side-buttons">
                            </div>
                            <div class="right-side1">
                                <input type="button" value=">" class="side-buttons">
                            </div>
                            <div class="top-phone">

                                <div class="phone-pic">
                                    <a href="product.jsp?id=1&name=Samsung Galaxy Y">  <img src="images/m11.jpg" class="phone-pic"></a>
                                </div>
                                <div class="clear"></div>
                                <div class="phone-name">
                                    <a href="product.jsp?id=1&name=Samsung Galaxy Y"> <span>Samsung Galaxy Y</span><br></a>
                                </div>
                                <div class="qview">
                                    <span>1800rs</span>
                                    <input type="button" class="gobutton8" name="view" value="">
                                </div>
                            </div>
                            <div class="top-phone">

                                <div class="phone-pic">
                                    <img src="images/m4.jpg" class="phone-pic">
                                </div>
                                <div class="clear"></div>
                                <div class="phone-name">
                                    <span><a href="product.jsp?id=1">Samsung Galaxy Y</span><br>
                                </div>
                                <div class="qview">
                                    <span>1800rs</span>
                                    <input type="button" class="gobutton8" name="view" value="">
                                </div>
                            </div>
                            <div class="top-phone">

                                <div class="phone-pic">
                                    <img src="images/m7.jpg" class="phone-pic">
                                </div>
                                <div class="clear"></div>
                                <div class="phone-name">
                                    <span>Samsung Galaxy Y</span><br>
                                </div>
                                <div class="qview">
                                    <span>1800rs</span>
                                    <input type="button" class="gobutton8" name="view" value="">
                                </div>
                            </div>
                        </div>




                    </div>
                </div>

            </div>
        </div>
        <div class="clear"></div>
      
    </body>
</html>
