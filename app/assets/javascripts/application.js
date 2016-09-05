$(document).ready(function(){

  // var turbolinks = require('turbolinks')

  $("#walk-me-home").on("click", function(e){
    console.log("In walk-me-home ")
    e.preventDefault();

    $.ajax({
      url: "/events#create",
      method: "POST"
    })
    .done(function(serverResponse){
      console.log(serverResponse + "This is the server response");
    })

  })

});
