<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forumpage</title>
<style>
@import "compass/css3";

*, *:before, *:after {
  @include box-sizing(border-box);
}

$red: #fb887c;
$green: #AFC7B9;
$navy: #34495e;

@import url("http://www.markmurray.co/codepen/customstyle.css"), url("http://fonts.googleapis.com/css?family=Lato:300,400,700");

html, body {
  background: $green;
  font-family: 'Lato', sans-serif;
  height: 100%;
  padding: 1em;
}

.left { text-align: left!important }
.center { text-align: center!important }
.right { text-align: right!important }

.container {
  max-width: 1080px;
  margin: 0 auto;
  height: 100%;
}

.box {
  width: 49%;
  background: #9adaef;
  margin: 0 auto 2em auto;
  overflow: auto;
  padding: 1em;
  border-radius: 52px;
  display: inline-block;
  vertical-align: top;
  
    &:first-child{
      margin-right: 1%;
    }
}

h1 {
  color: #3a3a3a;
  text-align: center;
  margin: 1em 0;
}

table {
  border: none;
  outline: none;
  width: 100%;
  margin: 0.5em 0 1em;
  
  tr.table-header {
    td {
      font-size: 0.7em;
      font-weight: bolder;
    }
  }
  
  td {
    padding: 0.75em 0.5em;
  }
  
  td:first-child {
    text-align: left;
  }
  
  td:nth-child(3){
    text-align: center;
  }
  
  td:last-child, td:nth-child(4){
    text-align: right;
  }
  
  tr:nth-child(2n+2){
    background: darken(#eee, 1%); 
  }
}

.searchButton {
  border: 1px solid #e0e0e0;
  background: #fff;
  outline: none;
  padding: 1em;
  border-radius: 3px;
  font-weight: 300;
  font-size: 0.8em;
  margin-top: 0.25em;
  margin-bottom: 0.25em;
  position: relative;
}      

.margin-right {
  margin-right: 1%;
}

.half {
  width: 49.5%;
  display: inline-block;
  
  input {
    width: 100%;
  }
}

.half:first-child {
  margin-right: 2%;
}

.selected {
  text-decoration: line-through;
  color: #aaa;
}

.dollar {
  position: relative;
  display: inline-block;
}

.dollar input {
  padding-left: 2em; 
}

.dollar span {
  position: absolute;
  display: block;
  padding: 3px 3px 3px 7px;
  pointer-events: none;
  left: 5px; top: 13px;
  color: #aaa;
  z-index: 1; 
}
   
.searchButton.full {
  width: 100%;
}

.list {
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  
  ul {
    
    li {
      margin: 1em 0;
    }
  }
}

.inventory h1 {
  color: #3a3a3a;
  padding-top: 5px;
  font-family: 'Lato', sans-serif;
  text-align: center;
  
}

input[type='checkbox']{
  background: transparent;
  border: 2px solid #3a3a3a;
  padding: 0.2em;
  font-size: 1em;
}

button.clear {
  background: lighten($navy, 6%);
  border-bottom: 4px solid darken($navy, 5%);
}

button.clear:hover {
  background: lighten($navy, 2%);
  border-bottom: 2px solid darken($navy, 5%);
}

button {
  margin: 0.25em 0;
  display: block;
  outline: none;
  background: $red;
  border: none;
  padding: 1.1em;
  border-radius: 6px;
  width: 100%;
  color: white;
  text-transform: uppercase;
  cursor: pointer;
  border-bottom: 4px solid darken($red, 5%);
  
    &:hover {
      border-bottom: 2px solid darken($red, 5%);
      margin-bottom: 0.9em;
      @include box-shadow(inset 0 0 10px 0px rgba(black, 0.2));
    }
  
}

.cost {
  margin-bottom: 1em;
  
  span {
    padding: 0.5em;
    
    &:first-child {
      float: left;
    }
    
    &:nth-child(2){
      float: right;
      vertical-align: baseline;
    }
  }
}

.total {
  
  background: $red;
  color: white;
  font-weight: bolder;
  border-radius: 5px;
}

#successMessage, #errorMessage {
  display: none;
  text-align: center;
  margin: 0.5em 0;
  @include transition(display 0.3s ease);
  
}

i {
    vertical-align: baseline;
    margin-right: 0.5em;
    border-radius: 50%;
    width: 0.5em; height: 0.5em;
    padding: 0.5em;
    font-size: 0.8em;
    color: white;
}

i.icon-checkmark {
  background: green;
}

i.icon-cross {
  background: red;
}

i.delete {
  color: lighten($red, 8%);
  background: transparent;
  font-size: 1.1em;
  vertical-align: sub;
  cursor: pointer;
  
  &:hover {
    color: darken($red, 8%);
  }
}

#successMessage {
  color: green;
}

#errorMessage {
  color: red;
}


@media (max-width: 800px) {
  .box {
    width: 100%;
    display: block;
  }
}



/* Clearfix */
.cf:before,
.cf:after {
    content: " "; /* 1 */
    display: table; /* 2 */
}

.cf:after {
    clear: both;
}

</style>

</head>
<body>
<%@include file="header.jsp" %>	
<br>
<br>
<br>
<br>
<center>
		  <div class="box margin-right" id="shopping-list">
<h1 class="page-header">${f.query}</h1>

<p><small>-written by</small> <i>${f.queryinventor}</i> on ${f.ideas}</p><br><br>


   
								<form:form action="./addreplay?id=${f.id}" commandName="rep" method="post">
									<form:textarea placeholder="replay" class="form-control input-md" path="replay"></form:textarea>
									<br><br><form:input placeholder="user name" class="form-control input-md" path="userid" />
									<form:hidden value="${f.id}" path="forumid" /><br>
									<br><input class="btn btn-primary btn-lg btn-block" type="submit" value="replay" />
								</form:form>
								<div id="global">
								 <h1>replays</h1>
    <c:forEach items="${cmts}" var="a">
    
											<div >

												<img src="" class="avatar">
												<p>
													${a.userid}
															says..${a.replay}<br>${a.creationDate}
											
											</div>
										
										==============================================================
    
									<%-- 	<div class="messages">
											<div class="message">

												<img src="" class="avatar">
												<p>
													<strong>${a.userid},<em> replayed at
															${a.creationDate}</em></strong> ${a.replay}
											</div>
										</div> --%>
									</c:forEach>
									</div>

</body>
</html>