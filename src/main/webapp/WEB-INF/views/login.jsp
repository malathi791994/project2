<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8">
  
  <title>Login Form </title>
    
    
 


<style>
/* .container {
  margin: 50px auto;
  width: 640px;
} */
 
.login {
  position: relative;
  margin: 0 auto;
  padding: 166px 30px 30px;
  width: 500px;
}
.login p.submit {
  text-align: right;
}
 
.login-help {
  margin: 20px 0;
  font-size: 11px;
  color: white;
  text-align: center;
  text-shadow: 0 1px #2a85a1;
}
 
.login-help a {
  color: #cce7fa;
  text-decoration: none;
}
 
.login-help a:hover {
  text-decoration: underline;
}
 
:-moz-placeholder {
  color: #c9c9c9 !important;
  font-size: 13px;
}
 
::-webkit-input-placeholder {
  color: #ccc;
  font-size: 13px;
}
/* .container {
  margin: 50px auto;
  width: 640px;
} */
.login:before {
  content: '';
  position: absolute;
  top: 80px;
  right: -8px;
  bottom: -8px;
  left: -8px;
  z-index: -1;
  background: #1daede;
  border-radius: 4px;
}
 
.login h1 {
  margin: -20px -20px 21px;
  line-height: 40px;
  font-size: 15px;
  font-weight: bold;
  color: #555;
  text-align: center;
  text-shadow: 0 1px white;
  background: #f3f3f3;
  border-bottom: 1px solid #cfcfcf;
  border-radius: 3px 3px 0 0;
  background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
  background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
  -webkit-box-shadow: 0 1px whitesmoke;
  box-shadow: 0 1px whitesmoke;
}
 
.login p {
  margin: 20px 0 0;
}
 
.login p:first-child {
  margin-top: 0;
}
 
.login input[type=text], .login input[type=password] {
  width: 278px;
}
 
.login p.remember_me {
  float: left;
  line-height: 31px;
}
 
.login p.remember_me label {
  font-size: 12px;
  color: #777;
  cursor: pointer;
}
 
.login p.remember_me input {
  position: relative;
  bottom: 1px;
  margin-right: 4px;
  vertical-align: middle;
}
input {
  font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
  font-size: 14px;
}
 
input[type=text], input[type=password] {
  margin: 5px;
  padding: 0 10px;
  width: 200px;
  height: 34px;
  color: #404040;
  background: white;
  border: 1px solid;
  border-color: #c4c4c4 #d1d1d1 #d4d4d4;
  border-radius: 2px;
  outline: 5px solid #eff4f7;
  -moz-outline-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
}
 
input[type=text]:focus, input[type=password]:focus {
  border-color: #7dc9e2;
  outline-color: #dceefc;
  outline-offset: 0;
}
 
input[type=submit] {
  padding: 0 18px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
}
input[type=checkbox],
input[type=radio] {
border: 1px solid #c0c0c0;
margin: 0 0.1em 0 0;
padding: 0;
font-size: 16px;
line-height: 1em;
width: 1.25em;
height: 1.25em;
background: #fff;
background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ededed), to(#fbfbfb));
 
-webkit-appearance: none;
-webkit-box-shadow: 1px 1px 1px #fff;
-webkit-border-radius: 0.25em;
vertical-align: text-top;
display: inline-block;
 
}
 
input[type=radio] {
-webkit-border-radius: 2em; /* Make radios round */
}
 
input[type=checkbox]:checked::after {
content:"✔";
display:block;
text-align: center;
font-size: 16px;
height: 20px;
line-height: 18px;
}
 
input[type=radio]:checked::after {
content:"●";
display:block;
height: 16px;
line-height: 15px;
font-size: 20px;
text-align: center;
}
 
 select {
border: 1px solid #D0D0D0;
background: url(http://www.quilor.com/i/select.png) no-repeat right center, -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fbfbfb), to(#ededed));
background: -moz-linear-gradient(19% 75% 90deg,#ededed, #fbfbfb);
-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
-moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
color: #444;
} 
 body {
  font: 13px/20px "Lucida Grande", Tahoma, Verdana, sans-serif;
  color: #404040;
  background: #ffffff;
  overflow:hidden
} 
</style>
</head>
<body>
<%@include file="header.jsp" %>	

<div class="container">
  <div class="login">
    <h1>Login</h1>
    
      <form action="<c:url value="/login " />" method="post">
           <c:if test="${not empty error}">
                <div class="error" style="color: red;">${error}</div>
                </c:if>
<br>            

          <c:if test="${not empty msg }">
          <div class="msg">${msg}</div>
          </c:if>
    
      <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
      <p><input type="password" name="password" value="" placeholder="Password"></p>
      <!-- <p class="remember_me">
        <label>
         <label>
          <input type="checkbox" name="remember_me" id="remember_me">
          Remember me 
        </label>
        </label>
      </p> -->
      <p class="submit"><input type="submit" name="commit" value="Login"></p>
    </form>
  </div>
 
 <!--  <div class="login-help">
    <p>Forgot your password? <a href="#">Click here to reset it</a>.</p>
  </div>
 --></div>
</body>
</html>  
