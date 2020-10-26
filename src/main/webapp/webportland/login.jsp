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
  <link rel="stylesheet" type="css" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
<header>
  <div class="container">
    <div class="row">
      <a href="" class="logo"><img src="portland.png" style="margin-left:100px;width: 100px;
  height: 100px;"></a>
    </div>
  </div>
</header>

  <div class="main-div" style="color: white;">
    <h3>Admin</h3>
    <input type="email" style="color: white;" placeholder="Email..." id="email_field" />
    <input type="password" style="color: white;" placeholder="Password..." id="password_field" />
    <button onclick="login()">Login</button>
    <button onclick="location.href='index.jsp'">Back to Home</button>
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
<script src="login.js"></script>

</body>
</html>
