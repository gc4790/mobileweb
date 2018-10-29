<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="static/css/individualregister.css" rel="stylesheet" type="text/css"  media="all" />
         <link href="static/css/style1.css" rel="stylesheet" type="text/css"  media="all" />
         <link href="static/css/style3.css" rel="stylesheet" type="text/css"  media="all" />
         <link href="static/css/common.css" rel="stylesheet" type="text/css"  media="all" />
      
          <script src="static/js/angular.min.js"></script>
          <script src="static/js/app.js"></script>
          <script src="static/js/registration/service/registrationService.js"></script>
          <script src="static/js/registration/controller/indRegistrationCtrl.js"></script>
          
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrap" ng-app="indvReg" ng-controller="indRegistrationController as indRegCtrl">
            <div class="topheader-post">
                <div class="qadbutton">
             <a href="postaquickad.jsp" class="button">Post a Quick Ad</a>
             </div>
             <div class="logo">
        <h1>Mobiles<span>NearMe</span></h1>
             </div>


                <div class="searchapp">
                    <form action="searchapp.jsp" method="post">
            <input type="text" name="brand" id="search" placeholder="Search By Product Name" class="txt4">
            <select name="area" class="txt5">
                 <option>pune</option>
                 <option>banglore</option>
                 <option>mumbai</option>
                 <option>aurangabad</option>
                 <option>nashik</option>
             </select>
            <input type="submit" value="Go" class="gobutton101" name="go"><br>
            <span>Warranty Phones Only</span><input type="checkbox" name="warrwntycheck" value="ON" />
            </form>
            </div>




             <div class="localarea">
                  
                 </div>
            </div>

             <div class="clear"></div>
               <div class="wrap">
                   <div class="container">
                    <div class="register">
                         
                        <div class="register-form">
                            <h1>Individual Registration Page</h1><br>
                         
                          <span> Name :</span> <input type="text" ng-model="indRegCtrl.regstrnData.userName" class="txt2" name="name" required="required"><br><br>
                            <span> Mobile Number :</span> <input type="text"  class="txt2" ng-model="indRegCtrl.regstrnData.mobileNo" name="mob" onkeyup="checkMobile(this);" required="required">&nbsp;&nbsp;<span><div id="mob"></div></span><br><br>
                        <span> Email-id :</span><input type="email" class="txt2" name="email" required="required"  ng-model="indRegCtrl.regstrnData.emailId"><br><br>
                        <span> Fmail-id :</span><input type="fmail" class="txt2" name="fmail" ng-model="indRegCtrl.regstrnData.fmailId"><br><br>
                        <span> Password :</span><input id="password" type="password" class="txt2" name="pass" ng-model="indRegCtrl.regstrnData.password" required="required"><br><br>
                        <span> Confirm Password :</span> <input id="password1" type="password" class="txt2" name="cpass" required="required"><br>&nbsp;&nbsp;<span><div id="pass" style="color: Red"></div><div id="pass1" style="color: green"></div></span>
                        <span> Address :</span> <br><input type="text" class="txt2" name="location" ng-model="indRegCtrl.regstrnData.address"><br><br>
                            <span>Profile Pic :</span><input type="file" name="propic" value="" />
                            
                            <div>    
                            </div>
                            
                            <br><br>
                            <span>My Choice Setting :</span><select name="prange" class="txt">
                                <option>5000 to 10000</option>
                                <option>10000 to 15000</option>
                                <option>15000 to 20000</option>
                                <option>20000 to 25000</option>
                                <option>25000 to 30000</option>
                                <option>30000 to 40000</option>
                                <option>40000 to 50000</option>
                                <option>50000 to 60000</option></select><br>
                                <span>location on Map :</span>  <br>
                            <input type="button" id="loc" value="Add More Location" ></button><br><br><br>
                         <div id="more">
                             <span> Location 1:</span> <br><br>
                           <span> Location 2 :</span> <br><br>
                            <span> Location 3 :</span><br><br>
                             <span> Location 4 :</span><br><br>
                         </div>
                           
                         <input type="submit" id="submit" name="register" value="Register" class="button2" 
                           ng-click = "indRegCtrl.saveIndividualRegData()" >
                        </div>

                       
                        </div>
                         
                         
                         
                         
                         
                         
                    </div>
                </div>
         </div>
    </body>
</html>
