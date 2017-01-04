<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/assets/css/style.css'/>">
 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" 

type="text/css" href="assets/css/bootstrap.css">

		
		<link rel="stylesheet" type="text/css" 

href="assets/css/main.css">

		
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		


		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link 

href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
@import url('//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
/*http://codepen.io/drehimself/pen/KdXwxR?utm_source=bypeople
http://nicolasgallagher.com/pure-css-speech-bubbles/demo/*/

*, *:before, *:after {
  box-sizing: border-box;
}
.chat .chat-history {
  padding: 30px 30px 20px;
  border-bottom: 2px solid white;
}
.chat .chat-history .message-data {
  margin-bottom: 15px;
}
.chat .chat-history .message-data-time {
  color: #a8aab1;
  padding-left: 6px;
}
.chat .chat-history .message {
  color: white;
  padding: 18px 20px;
  line-height: 26px;
  font-size: 16px;
  border-radius: 5px;
  margin-bottom: 30px;
  width: 90%;
  position: relative;
}
.chat .chat-history .message:after {
content: "";
    position: absolute;
    top: -15px;
    left: 20px;
    border-width: 0 15px 15px;
    border-style: solid;
    border-color: #CCDBDC transparent;
    display: block;
    width: 0;
}
.chat .chat-history .you-message {
  background: #CCDBDC;
  color:#003366;
}
.chat .chat-history .me-message {
  background: #E9724C;
}
.chat .chat-history .me-message:after {
  border-color: #E9724C transparent;
    right: 20px;
    top: -15px;
    left: auto;
    bottom:auto;
}
.chat .chat-message {
  padding: 30px;
}
.chat .chat-message .fa-file-o, .chat .chat-message .fa-file-image-o {
  font-size: 16px;
  color: gray;
  cursor: pointer;
}

.chat-ul li{
    list-style-type: none;
}

.align-left {
  text-align: left;
}

.align-right {
  text-align: right;
}

.float-right {
  float: right;
}

.clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: " ";
  clear: both;
  height: 0;
}
.you {
  color: #CCDBDC;
}

.me {
  color: #E9724C;
}

h1, h2, h3, h4, h5, h6 {
    font-family: "Raleway",sans-serif;
    color: #003366;
}

</style>	</head>
	<div class="container clearfix">
<p> You've built a good business and you're excited about taking the next step.  You're ready to grow; you want to expand your business by adding new clients, services or both.  
But you're fully aware that what got you here isn't going to get you there.  Mentally you're ready, but something is making you pause, perhaps... </p> 
    <div class="chat">   
      <div class="chat-history">
        <ul class="chat-ul">
          <li> <h2>you feel like you’re at full capacity with your current clients...</h2></li>
          <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            A new client?!?! I would love to help them, but where are we going to find the time?

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right"> We should take a look at your onboarding and service delivery workflows, for most businesess there are many ways to save time and not compromise quality.  </div>
          </li>
          <li><h2>or little things are being forgotten that shouldn’t be...</h2></li>
            <li class="clearfix">
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            What?! No way, how did I miss that. I never forgot that part before.

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">Remembering everything can quickly become impossible as your business grows, we need to take a look at your reminder management system and also see if there are steps in your business we can automate.</div>
          </li>
          <li><h2>or you’ve started to notice mistakes and miscommunications ...</h2></li>
            <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            6? Bob told me 8! How did this mix up happen?!
            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">
The more people in your business, the more opportunity for mistakes, having a solid system in place for tracking important client data will help avoid these miscommunications.            </div>
          </li>
          <li><h2>or it can be hard to find the information you need ...</h2></li>
            <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            I know that I spoke with Mary about this, but where did I put that note...hopefully she also sent me an email...

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">Finding the right information when you need it will save you time and energy. Your data management systems need to grow with your business. All businesses need a dynamic data strategy and a system to ensure that the strategy is implemented correctly.</div>
          </li>
        </ul>
        
      </div> <!-- end chat-history -->
      
    </div> <!-- end chat -->
   <p> You know you can’t achieve that growth with how things are working now. You know that you need to get it right now if you want to grow. You just dont know how to start. I can help. </p>
   <h2>You can get the business growth you want.  You just need to put the right systems in place.</h2> 
 <p> Your systems define how you run your business. Your systems define they way you operate your business to to minimize mistakes, manage information and automate tasks. Solid business systems save time, increase quality, and ensure consistency. When you use systems to improve your day-to-day business operations you will be able to grow your business</p>
<p>Get excited! The growth that you want is completely attainable. All you need to do is invest in improving your business operations. Let me be your Ally.</p>
  </div>
</body>
</html>
 