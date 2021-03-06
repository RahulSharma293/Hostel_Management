
<%@ page language ="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao" %>
<!DOCTYPE html>
<html>
<%UserDao user=(UserDao)session.getAttribute("user");%>
<head>
<jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
<title>HOSTEL MANAGEMENT</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Footer-white.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
background-image:url("wall.jpeg");
background-size:cover;
  font-family: "Lato", sans-serif;
}
th,td{
font-size: 20px;
color:white;
padding-left: 20px;
padding-top: 10px;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #130f40;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  color:white;
  transition: margin-left .5s;
  padding: 16px;
}

#myFooter {
	background-color: #373a48;
	color:white;
}


#myFooter ul{
	list-style-type: none;
    padding-left: 0;
    line-height: 1.7;

}

#myFooter h5{
	font-size: 18px;
    color: white;
    font-weight: bold;
    margin-top: 30px;
}

#myFooter a{
	color:#d2d1d1;
	text-decoration: none;
}

#myFooter a:hover, #myFooter a:focus{
	text-decoration: none;
	color:white;
}

#myFooter .myCols{
	text-align: center;
}

#myFooter .social-networks{
	text-align: center;
	padding-top: 30px;
	padding-bottom: 38px;
}

#myFooter .social-networks a{
    font-size: 32px;
    margin-right: 5px;
    margin-left: 5px;
    color: #f9f9f9;
    padding: 10px;
    transition: 0.2s;
}

#myFooter .social-networks a:hover{
	text-decoration: none;

}

#myFooter .facebook:hover{
	color:#0077e2;
}

#myFooter .google:hover{
	color:#ef1a1a;
}

#myFooter .twitter:hover{
	color: #00aced;
}

@media screen and (max-width: 767px){
	#myFooter {
		text-align: center;
	}
}



html{
	height: 100% !important;
}

body{
    display: flex;
    display: -webkit-flex;
    flex-direction: column;
    -webkit-flex-direction: column;
    height: 100%;
}

.content{
	flex: 1 0 auto;
	-webkit-flex: 1 0 auto;
	min-height: 200px;
}

#myFooter{
	flex: 0 0 auto;
    -webkit-flex: 0 0 auto;
}
html{
    height: 100%;
}

body{
    display: flex;
    display: -webkit-flex;
    flex-direction: column;
    -webkit-flex-direction: column;
    height: 100%;
}


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.topnav-right {
  float: right;
  margin: right;	
}
            
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Dashboard.jsp">Dashboard</a>
  <a href="Profile.jsp">Profile</a>
  <a href="Complaint.jsp">Complaint</a>
</div>
<nav class="navbar  navbar-expand-sm bg-warning navbar-dark">
<div id="main">

  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Hostel Management</span>
<div class="topnav-right">
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a href="Dashboard.jsp" class="btn btn-info btn-lg" role="button">Home</a>
      </li>
     <li class="nav-item">
    <a href="Profile.jsp" class="btn btn-info btn-lg" role="button">Fine</a>
    </li>
     <li class="nav-item">
    <a href="Profile.jsp" class="btn btn-info btn-lg" role="button">Apply leave</a>
    </li>
     <li class="nav-item">
    <a href="Profile.jsp" class="btn btn-info btn-lg" role="button">Excecutive Committee</a>
    </li>
     <li class="nav-item">
    <a href="index.html" class="btn btn-info btn-lg" role="button">Logout</a>
</li>
</ul>
</div>
</div>
</div>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
</nav>
<div class="container" >

<table style="margin-left: 80px; margin-top: 20px;">
			<% ResultSet rs=c1.showProfile(user.getUid());
				if(rs.next())
				{
				%>
					<thead>
						<h3 style="margin-left: 600px; color:white;"">
						</center><strong>Personal info ::</strong>
						</h3>
					</thead>
					</tr>
						<tr>
							<th>Roll no</th>
							<td>:<%=rs.getString("uid")%></td>
						</tr>
						<tr>
					<tr>
						<th>Firstname</th>
						<td><%=rs.getString("first_name")%></td>

					</tr>

					<tbody>
						<tr>
							<th>Lastname</th>
							<td>:<%=rs.getString("last_name") %></td>
						<tr>
							<th>Contact No</th>
							<td>:<%=rs.getString("contact") %></td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td><%=rs.getString("email") %></td>
						</tr>
						<th><h3>
								<strong>Correspondence Address ::</strong>
							</h3></th>
						<tr>
							<th>Address</th>
							<td>:<%=rs.getString("address")%></td>
						</tr>
						<tr>
							<th>City</th>
							<td>:<%=rs.getString("city")%></td>
						</tr>
						<tr>
							<th>State</th>
							<td><%=rs.getString("state")%></td>
						</tr>
						<tr>
							<th>Country</th>
							<td>:<%=rs.getString("country")%></td>
						</tr>

						<th><h3>
								<strong>Parents Information ::</strong>
							</h3></th>
						<tr>
							<th>Father's Name</th>
							<td>:<%=rs.getString("father_name")%></td>
						</tr>
						<tr>
							<th>Mother's Name</th>
							<td>:<%=rs.getString("mother_name")%></td>
						</tr>
						<tr>
							<th>Father's mobile no</th>
							<td>:<%=rs.getString("father_mobile")%></td>
						</tr>
						<tr>
							<th>Mother's mobile no</th>
							<td>:<%=rs.getString("mother_mobile")%></td>
						</tr>
						<tr>
							<th>Occupation</th>
							<td>:<%=rs.getString("father_occupation")%></td>
						</tr>
						<tr>
							<th>Category</th>
							<td>:<%=rs.getString("category")%></td>
						</tr>
						<tr>
							<th>Room no</th>
							<td>:<%=rs.getString("room_no")%></td>
						</tr>
						<tr>
							<th>Hostel name</th>
							<td>:<%=rs.getString("hostel_name")%></td>
						</tr>
						<tr>
							<th>Branch</th>
							<td>:<%=rs.getString("branch")%></td>
						</tr>
						<% } 
						else
						{
							%>
							<center><h1>no data found plz insert data</h1></center>
							<% 
						}
							%>
	
			
		</table>
</div>>
 <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 myCols">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Sign up</a></li>
                        <li><a href="#">Downloads</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="#">Company Information</a></li>
                        <li><a href="#">Contact us</a></li>
                        <li><a href="#">Reviews</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help desk</a></li>
                        <li><a href="#">Forums</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="social-networks">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook-official"></i></a>
            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
        </div>
       
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html> 
