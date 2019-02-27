$(document).ready(function(){
  if($("#photo-div").length > 0) {
    $("#favorite_photos").hide();
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
