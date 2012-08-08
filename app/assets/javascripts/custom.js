$(document).ready(function(){
    //alert("application js called!");
    $.ajax({
    })// ajax call to get
    
    $(".ancmts a").click(function(){
    //alert("alert!");
    $(this).parent().fadeOut();
    return false;
    })//click function end
    
    var url =  parent.window.location
    $('#currentpage').html(url.toString());
    
    

})