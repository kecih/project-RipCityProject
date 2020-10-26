firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.
//mengecheck apabila user sudah login akan langsung diarahkan ke admin page
   window.location.href = "admin.jsp";

    

  } else {
    // No user is signed in.
//jikaa belum akan tetap di login page
    

  }
});
function login(){

  var userEmail = document.getElementById("email_field").value; //mengambil value dengan id "email_field"
  var userPass = document.getElementById("password_field").value;//mengambil value dengan id "password_field"

  firebase.auth().signInWithEmailAndPassword(userEmail, userPass).catch(function(error) { //untuk mengechek apakah email passwordnya sesuai
    // Handle Errors here.
    var errorCode = error.code;
    var errorMessage = error.message;

    window.alert("Error : " + errorMessage); //menampilkan pesan jhika terdapat error

    // ...
  });

}

