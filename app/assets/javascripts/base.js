:javascript
$(document).ready(function() {

  $("#info_creator").click(function(event) {
    event.preventDefault();
    $(".panel.panel-warning").toggle("fast"); 
    console.log("ok");
  });

});