$(document).ready(function(){

  // var turbolinks = require('turbolinks')

  $("#walk-me-home").on("click", function(e){
    e.preventDefault();

    $.ajax({
         url: "/sms/text_friend"
       })
       .done(function(serverResponse){
         console.log(serverResponse + " -- This is the post-send-text server response");
       })
       .fail(function(serverResponse){
         console.log("Request failed");
       })
     $.ajax({
          url: "/events",
          method: "POST"
        })
        .done(function(serverResponse){
          console.log(serverResponse + " -- This is the event-created server response");
        })
        .fail(function(serverResponse){
          console.log("New event creation failed");
        })
    $.ajax({
      url: "http://172.16.50.232:8080/start",
      crossDomain : true,
    })
    .done(function(serverResponse){
      $("#walk-me-home").hide();
      $("#home-safely").show();
      console.log(serverResponse + " -- This is the start-drone server response");
    })
  // need to add failure response
  })

  $("#home-safely img").on("click", function(e){
    e.preventDefault();
    $.ajax({
      url: "http://172.16.50.232:8080/end",
      crossDomain : true,
    })
    .done(function(serverResponse){
      console.log(serverResponse + " -- This is the stop-drone server response");
    })
    $.ajax({
      url: "/sms/text_friend_once_home"
    })
    .done(function(serverResponse){
      console.log(serverResponse + " -- This is the text-once-home server response");
      $(this).hide();
      $("#show-events").show();
    })
    .fail(function(serverResponse){
      console.log("Request failed");
    })
    // need to add failure response

  })

});
