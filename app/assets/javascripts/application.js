// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs


$(document).ready(function(){
    //alert("app js loaded");
    localserver = "http://localhost:3000"
    rackspaceserver= "http://198.101.236.20:3000"
    
    localfaye = 'http://localhost:9292/faye'
    rackspacefaye = 'http://198.101.236.20:9292/faye'
    
    uri = rackspaceserver + "/users/getfollowees.json"
    
if ($('.messageboard-container').length > 0)  {    
    //alert("message page loaded");
    // only open push notification on this page, for now
    $("#sidebar").css("overflow","hidden");

    //ajax call to subscribe to followee's channel
    $.ajax({type:"get",
           url:uri,
           dataType:"json",
           success:function(data){
                    //console.log(data)
                for (var i = 0; i < data.length; i++) {
                    //alert(data[i]);
                    //code to subscribe to friends channel
                    //console.log("/friendpost/" + data[i]);
                    var faye = new Faye.Client(rackspacefaye);
                    faye.subscribe("/friendpost/" + data[i], function(data){
                    //alert(data);
                    //$('#announcement').text("friend posting comments");
                    //alert(data);
                    eval(data);
                    });
                    //end of code to subscribe to friends faye channel
                //Do something
                }
            }//success end
        })//ajax end
    
    /*
    //start of faye subscription
    var faye = new Faye.Client('http://localhost:9292/faye');
    faye.subscribe("/friendpost/" + "binzhu", function(data) {
    //alert(data);
    //$('#announcement').text("friend posting comments");
    eval(data);
    //alert(data);
    });
    //end of faye subscription
    */
    
    
}
    
})