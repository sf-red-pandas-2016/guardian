$(document).ready(function(){

  // var turbolinks = require('turbolinks')

  $("#walk-me-home").on("click", function(e){
    console.log("In walk-me-home")
    e.preventDefault();

    // var wnd = window.open("http://172.16.51.60:3000/start", "_blank" );
    // wnd.close()

    $.ajax({
      url: "http://172.16.50.232:8080/start",
      crossDomain : true,
    })

    .done(function(serverResponse){
      
        console.log(serverResponse + "This is the server response");
    })
  //
  // var xhr = new XMLHttpRequest();
  // xhr.open("get", "http://172.16.50.232:8080/test", true);
  // xhr.onload = function(){  //instead of onreadystatechange
  //   //do something
  //   console.log("Did we get anything back??")
  // };
  // xhr.send(null);
  })




});
