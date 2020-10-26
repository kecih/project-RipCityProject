<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Rip City Projects</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="styleTable.css">
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css"/>
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://kit.fontawesome.com/f615579a43.js"></script>
</head>
<body>
<header>
	<div class="container">
		<div class="row">
			<a href="" class="logo"><img src="portland.png" style=" margin-top:5px;margin-left:100px;width: 100px;height: 100px;"></a>
			<nav>
				<ul>
					<li><a href="#home">Home</a></li>
					<li><a href="#profile">Profile</a></li>
					<li><a href="#roster">Roster</a></li>
					<li><a href="#schedule">Schedule</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<section class="profile" id="profile">
	<div class="profile2" style="flex-direction: column;">
			<div  style="color:white; font-size:50px; margin-left: 600px">PROFILE</div>
			<p style="color:white; font-size:40px; margin-left:510px;"> Portland Trail Blazers</p>
			<br>
			<img src="portland.png" style="width:300px; height:300px; margin-left:100px; float:left;">
			<p style="margin-top:40px; margin-left:450px; color: white; font-size: 20px;">The Portland Trail Blazers, commonly known as the Blazers, are an American professional basketball team based in Portland, Oregon. The Trail Blazers compete in the National Basketball Association (NBA) as a member of the league's Western Conference Northwest Division. The team played its home games in the Memorial Coliseum before moving to Moda Center in 1995 (called the Rose Garden until 2013).The franchise entered the league as an expansion team in 1970, and has enjoyed a strong following: from 1977 through 1995, the team sold out 814 consecutive home games, the longest such streak in American major professional sports at the time, and only since surpassed by the Boston Red Sox.</p><br>
			<p style="margin-top:10px; margin-left:450px; color: white; font-size: 20px;">The Trail Blazers are the only NBA team based in the bi-national Pacific Northwest, after the Vancouver Grizzlies relocated to Memphis and became the Memphis Grizzlies in 2001 and the Seattle SuperSonics relocated to Oklahoma City and became the Oklahoma City Thunder in 2008.</p>
		</div>
	</section>
<section class="roster" id="roster" style=" height: 800px;" >
<p style="color:white; font-size:40px; text-align:center;">ROSTER</p>
<p style="color:white; font-size:30px; text-align:center;"> Current Roster of Portland Trailblazers 2020 </p>
<br>
		<div class="borderfoto">
		<img src="lillard.png" style=" height:200px;">
		<p style="font-size:20px; margin-left:40px">Name : Damian Lillard 
		<br> Position : PG <br> Number : 0</p>
		</div>

		<div class="borderfoto">
		<img src="anthony.png" style=" height:200px;">
		<br><p style="font-size:20px; margin-left:40px">Name : Carmelo Anthony 
		<br> Position : PF <br> Number : 00</p>
		</div>

		<div class="borderfoto">
		<img src="mccollum.png" style=" height:200px;">
		<p style="font-size:20px; margin-left:40px">Name : Cj McCollum
		<br> Position : SG <br> Number : 3</p>
		</div>

		<div class="borderfotoBawah">
		<img src="whiteside.png" style=" height:200px;">
		<p style="font-size:20px; margin-left:40px">Name : Hassan Whiteside
		<br> Position : C <br> Number : 21</p>
		</div>

		<div class="borderfotoBawah">
		<img src="ariza.png" style=" height:200px;">
		<p style="font-size:20px; margin-left:40px">Name : Trevor Ariza 
		<br> Position : SF <br> Number : 8</p>
		</div>

</section>
<section class="profile" id="profile">
	<div class="profile2" style="flex-direction: column;">
			
			<div class="court">
				<P style="color:white; font-size:40px; margin-left:600px;"> Home Court</p>
				<P style="color:white; font-size:30px; margin-left:590px;"> The Moda Center</p><br>
				<br>
				<div class="imagedua" style="margin-left: 50px;">
				<div class="homecourt"><img src="moda2.jpg"></div>
				<div class="homecourt"><img src="moda1.jpg"></div>
				</div>
			</div>
			<br>
			<div class="court2">
			<img src="moda3.jpg"style="width:500px; height:300px; margin-left:450px; margin-top: 50px; border:4px solid grey;">
			</div>
			<br><br><br><br>
				<div class="jersey">
			<P style="color:white; font-size:40px; margin-left:620px; "> Jersey</p><br>
					<div class="fotojersey">
					<div class="foto1"><img src="home.jpg" ></div>
					<div class="foto1"><img src="away.jpg"></div>
					<div class="foto1"><img src="alternate.jpg" class="foto3"></div>
					</div>
				</div>
	</div>
</section>
<br><br><br><br>

<section class="schedule" id="schedule">
<br><br>
<p style="color:white; font-size:40px; margin-left:620px; margin-bottom:10px; ">SCHEDULE</p>
<div class="tabledesign">
<table id="table1">

			<tr>
                <th>Versus</th>
                <th>Date</th>
          		<th>Time</th>
            </tr>
         </table>
		</div>
</section>
	
	
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>



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
</div>
<!-- Footer -->
			<div class="footer">
				<div class="footer-content">
					<div class="footer-section address">
					<img src="portland.png" style="float:left; width:200px; height:200px; margin-top: -10px">
					<div id="map" style="width: 300px; height: 200px; float: right; margin-top: -10px"></div>
	<script>
// koordinat dan zoom view peta
// Koordinat yang digunakan berupa latitude dan longitude,
//sebagai contoh saya menggunakan Koordinat CCIT
var map = L.map('map').setView([45.53165, -122.66686], 16);
// ini adalah copyright, bisa dicopot tapi lebih baik kita hargai sang penciptanya ya :)
L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
subdomains: ['a', 'b', 'c'],
}).addTo(map);
// ini adalah koordinat marker
L.marker([45.53165, -122.66686]).addTo(map)
.bindPopup("<b>Our Home Court Location</b>").openPopup();
var popup = L.popup();
function onMapClick(e) {
popup
.setLatLng(e.latlng)
.setContent("This point coordinate is " + e.latlng.toString())
.openOn(map);
}
map.on('click', onMapClick);
</script>
						<center><h1 class="logo-text" style="color:white;font-size:30px;"><span style="color:white;">Portland</span>
							<p>Trail Blazers</p></h1></center>
						<br>
						<center>
							<p >
								Portland, Oregon
							</p>
						</center>
						<br>
						<div class="contact">
							<span ><i style="color:black; margin-left: 310px;" class="fas fa-envelope-open-text"></i>trailblazers@gmail.com</span></center>
						</div>
						</div>

					</div>
				<div class="footer-bottom">
					<span style= "margin-left: 560px">portlandtrailblazer.com</span>
				</div>
			</div>
			</body>
</html>