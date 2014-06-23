$(document).ready(function() {
  console.log("ready!!!!"),
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $(".vote-button").on("click", function(event) {
    event.preventDefault()
    console.log("event prevented")

    // debugger
    var link = this.href
      console.log(link)

    $.ajax({
        type: "GET",
        url: link,
      })//end ajax
      // .done(function( msg ) {
      //   alert( "Data Saved: " + msg );
      // });

    });





});//end document