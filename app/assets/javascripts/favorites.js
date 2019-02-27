$(document).on('page:load', console.log("heeeeey"))

$(document).ready(function(){
  if($("#photo-div").length > 0) {
    console.log("yoooo")
    $("#favorite-button").click(function(){
      console.log("heyyyy")
      $("#all_photos").hide();
      $("#favorite_photos").show();
    });
  }
  $("#all-button").click(function(){
        $("#favorite_photos").hide();
        $("#all_photos").show();
      });

})
