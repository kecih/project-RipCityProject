<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
  <link rel="stylesheet" href="login.css" />
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="styleTable.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script type="text/javascript">
  	function validate(){
  		var id = document.getElementById("Id");
  		var versus = document.getElementById("Versus");
  		var tanggal = document.getElementById("Tanggal");
  		var time = document.getElementById("Time");
  		
  		if(id.value == "" || versus.value == "" || tanggal.value == "" || time.value == "" || finalscore.value == ""){
  			alert ("Please enter the value");
  		}else{
  			
  		}
  	}
  	
  	function lettersOnly(input){
		var regex = /[^a-z]/gi;
		input.value = input.value.replace(regex,"")
	}
  	
  	function numbersOnly(input){
		var regex = /[^0-9]/gi;
		input.value = input.value.replace(regex,"")
	}	
  </script>
</head>
<body>
<div id="user_div" class="main-div" style="text-align: center; color: white; margin-top: -50px">
    <h3>Welcome Admin</h3>
<form name="form1">
    <p id="user_para">Welcome to Admin web login. You're currently logged in.</p>
   
      <input type="text" name="Id" onkeyup="numbersOnly(this)" id="Id" placeholder="Id" required="required" style="color: white;"><br>
     
      <input type="text" name="Versus" onkeyup="lettersOnly(this)" id="Versus" placeholder="Versus" required="required" style="color: white;"><br>
     
      <input type="text" name="Tanggal" id="Tanggal" placeholder="Date (dd/mm/yyyy)" required="required" style="color: white;"><br>
      
      <input type="text" name="Time" id="Time"  placeholder="Time" required="required" style="color: white;"><br>
     
    <button onclick="logout()" class="btn waves-effect red darken-1">Logout</button>
    <button type ="submit" onclick="validate()"  id="addBtn" class="btn waves-effect waves-light">Add</button>
    <button type ="submit" onclick="validate()" id="updateBtn" class="btn waves-effect waves-light">Update</button>
    <button type ="submit" onclick="validate()" id="removeBtn" class="btn waves-effect red darken-1">Remove</button>
</form>
</div>

<div class="tabledesign">
<table id="table1">
       <tr>
              <th>Versus</th>
              <th>Date</th>
              <th>Time</th>
        </tr> 
</table>
</div>

<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.6.2/firebase-auth.js"></script> 


 <script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyBZrF3T8gQT9ukp8182qkTkN17sEyBJRCk",
    authDomain: "projectweb-4786f.firebaseapp.com",
    databaseURL: "https://projectweb-4786f.firebaseio.com",
    projectId: "projectweb-4786f",
    storageBucket: "projectweb-4786f.appspot.com",
    messagingSenderId: "234683733107",
    appId: "1:234683733107:web:1e68eb58881a58624d0606",
    measurementId: "G-9MCP5H22ZX"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
<script src="function.js"></script>
<script src="logout.js"></script>
</body>
</html>
