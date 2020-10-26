firebase.auth().onAuthStateChanged(function(user) { //check status apakah sudah login atau belom
  if (user) {
    // User is signed in.
//jika sudah akan ke admin page
   
  } else {
    // No user is signed in.
//jika belum akan diarahkan ke login page
    window.location.href = "login.jsp";

  }
});
function logout(){
  firebase.auth().signOut().then(function() {
  alert("sukses");
  window.location.href = "login.jsp"; //setelah tombol log out dipencet akan ke login page

  // Sign-out successful.
}).catch(function(error) {
console.log(error.message);// fungsi try and catch buat ngasih tau errornya dimana dan dimunculin dipage itu
});

};