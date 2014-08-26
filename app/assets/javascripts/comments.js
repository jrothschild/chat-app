$(function() {
  $("#url-bar-form").submit(function(event){
    if( !$("#url-bar").val() ) {
      event.preventDefault();
    }
  });
});