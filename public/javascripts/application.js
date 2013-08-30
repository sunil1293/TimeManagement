jQuery(function($) {
  // when the #country field changes
  $("#user_selected").change(function() {
    // make a POST call and replace the content
    var select_user = $('select#user_selected :selected').val();
    puts select_user
    if(select_user == "") select_user="0";
    jQuery.get('/users/update_projects/' + select_user, function(data){
        $("#projects_options").html(data);
    })
    return false;
  });

})