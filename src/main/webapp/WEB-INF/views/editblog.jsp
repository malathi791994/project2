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
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background-color: #d3d3d3;
 	font-family: 'Oxygen', sans-serif;
 	
}
input[type=submit] {
  padding: 0 -16px;
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
.main{
 	margin-top: 7px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 

15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
	width:100%;
	height:34px;
    font-size: 11px;
    padding-top: 3px;
    
}

textarea
{
width:100%;
	height:50px;
}

.main-login{
 	background-color: #fff;
    /* 

shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    

-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	

max-width: 330px;
    padding: 30px 30px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}

</style>	</head>
	<body>
		<!-- <div class="container"> -->
			<div class="row main">
				<!-- <div class="panel-heading"> -->
	             <!--   <div class="panel-title text-center"> -->
	               		<center><h1 class="title">What's in your Mind?</h1></center>
	 
              		<hr />
              		
	               	</div>
	            </div> 
				<div class="main-login main-center">
				


		 <form:form action="./updateblog" commandName="bo" method="post" class="form-horizontal">	
		 	<div class="form-group">
						
	<label for="name" class="cols-sm-2 control-label">ID</label>
							<div class="cols-sm-10">
		

						
<div class="input-group">
									
<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="id" type="text" class="form-control" value="${blogObject.id}"  name="name" id="name"  placeholder="Enter your" readOnly="true"/>
								</div>
			

				</div>
						</div>
							<%-- <div class="form-group">
						
	<label for="name" class="cols-sm-2 control-label">Creationdate</label>
							<div class="cols-sm-10">
		

						
<div class="input-group">
									
<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="creationDate" type="text" class="form-control" value="${blogObject.creationDate}" />
								</div>
			

				</div>
						</div> --%>
						
		 			
						<div class="form-group">
						
	<label for="name" class="cols-sm-2 control-label">Author</label>
							<div class="cols-sm-10">
		

						
<div class="input-group">
									
<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="author" type="text" class="form-control" value="${blogObject.author}"  name="name" id="name"  placeholder="Enter your Name"/>
								</div>
			

				</div>
						</div>

						<div class="form-group">
		

					
<label for="email" class="cols-sm-2 control-label">Title</label>
							
<div class="cols-sm-10">
								
<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-

hidden="true"></i></span>
									<form:input type="text" path="title" class="form-control"  value="${blogObject.title}" name="email" id="email"  

placeholder="Enter your Title"/>
								</div>
							</div>
		

				</div>

						<div class="form-group">
							<label 

for="username" class="cols-sm-2 control-label">Content</label>
							<div class="cols-sm-10">
				

				<div class="input-group">
									<span class="input-group-addon"><i 

class="fa fa-users fa" aria-hidden="true"></i></span>
									<form:textarea type="text" path="content" class="form-control" value="${blogObject.content}" name="username" id="username"  placeholder="Enter your content"></form:textarea><div class="form-group">
							<!-- <label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div> -->
						</div>

					
								</div>
					

		</div>
						</div>

						
<div class="form-group">
							<label for="text" class="cols-sm-2 control-label">Tags</label>
		

					<div class="cols-sm-10">
								<div class="input-group">
		

							<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
			

						<form:input type="text" path="tags" class="form-control" value="${blogObject.tags}" name="confirm" id="confirm"  placeholder="Enter yout Tag"/>
		
<p class="submit"><input type="submit" value="POST"></p>
<input type="submit" name="action" value="update" />
			<input type="reset" value="Reset" onclick="blog"/>

					
						</div>
							</div>
						</div>

		
	<a href="bloglist">to list blogdetails</a>
				
								</form:form>
			


			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	</body>
</html> 
