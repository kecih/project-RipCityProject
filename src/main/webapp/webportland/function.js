const Id = document.getElementById('Id');
const Versus = document.getElementById('Versus');
const Tanggal = document.getElementById('Tanggal');
const Time = document.getElementById('Time');
const addBtn = document.getElementById('addBtn');
const updateBtn = document.getElementById('updateBtn');
const removeBtn = document.getElementById('removeBtn');
const showBtn = document.getElementById('showBtn');

const database = firebase.database();
const db = firebase.firestore();
const usersRef = database.ref('/users');

var tblPor = document.getElementById('table1'); //mengambil value dari id "table1"
var rowdashboard = 1;

usersRef.once('value', function(snapshot) {// untuk mengambil data dengan fungsi snapshoot data yang diambil itu general
snapshot.forEach(function(childSnapshot) {//mengambil data yang lebih spesifik 
var childData = childSnapshot.val(); // tempat untuk menampung data yang telah diambil pada saat proses snapshoot
 
var row = tblPor.insertRow(rowdashboard);
var Versus = row.insertCell(0); //untuk menentukan variable versus terdapat pada row pertama
var Tanggal = row.insertCell(1);
var Time = row.insertCell(2);

 Versus.appendChild(document.createTextNode(childData.Versus)); // untuk menempatkan data yang diambil pada saat proses snapshot
 Tanggal.appendChild(document.createTextNode(childData.Tanggal));
 Time.appendChild(document.createTextNode(childData.Time));
 
 rowdashboard = rowdashboard + 1;
  });
});

addBtn.addEventListener('click', e => {
	e.preventDefault();
	usersRef.child(Id.value).set({
		Versus: Versus.value,
		Tanggal: Tanggal.value,
		Time: Time.value,
	});
});

updateBtn.addEventListener('click', e => {
	e.preventDefault();
	const newData = {
		Versus: Versus.value,
		Tanggal: Tanggal.value,
		Time: Time.value,
	};
	usersRef.child(Id.value).update(newData);
});

removeBtn.addEventListener('click', e => {
	e.preventDefault();
	usersRef.child(Id.value).remove()
	.then(() => {
		console.log('User Deleted !');
	})
	.catch(error => {
		console.error(error);
	});
});