$(document).ready(function(){
    /*###########start of comment page js############*/
	// alert("loaded!");
        
        
        
        
        if ($('#messageboard-container').length > 0){
            alert(" message page loaded");
            //alert($('div#sidebar').id);
        }
        
        
        $('.followlkclass').find("a").click(function(){
            //alert("clicked!");
            //functionality is made through ajax request, here just adjust the view
            $(this).parent().html("followed");
        })
        
        //button to dismiss notifications
        $('a.msgDismiss').click(function(){
            alert("clicked");
        })
        
        
	var windowHeight;
	var windowWidth;
	var windowHeightLeftOver;
	var windowHeightSplit;
	var contentHeight;
	
	function sidebarAdjust() {
		 //alert("adjust!");
		windowHeight = jQuery(window).height();
		windowWidth = jQuery(window).width();
		windowHeightLeftOver = windowHeight - 600;
		windowHeightSplit = windowHeightLeftOver / 2;
		contentHeight = windowHeight - 92;
		jQuery("#sidebar").css("height", windowHeight);
		jQuery("#content").css("height", contentHeight-140);
		jQuery("#sub-parent").css("height", windowHeight-175);
		jQuery("#flyout").css("height", windowHeight-175);
		jQuery(".messageboard-container").css("height", contentHeight-240);
	}
	
        //below statements calling the sidebarAdjust function doesn't seem to affect the 
	sidebarAdjust();
	//alert("adjusted!");
	jQuery(window).resize(function() {
		//alert("woah changed!");
		sidebarAdjust();
	});
	
	
	
	jQuery("#big-box").css("height", windowHeight);
	jQuery("#big-box").css("width", windowWidth);
	
	jQuery("#small-box").css("margin-top", windowHeightSplit);
	

	
	
	var bam = 1;
	/*function buildBox() {
		var box = jQuery("<li></li>").click(function() {
			// boomClick();
		});
		
		var xBoxExtra = jQuery("<div></div>").attr('id', 'extraBox').text("Extra content goes here");
		
		var xBox = jQuery("<div></div>").attr('id', 'exitBox').click(function() {
			alert("trying");
			// jQuery(this).parents("li").fadeOut("fast");
			

			
		});
		
		
		jQuery("<img />").attr('src', 'images/plus.gif').appendTo(xBox);
		var profileBox = jQuery("<div></div>").attr('id', 'profileBox');
		var profileImg = jQuery("<img />").attr('src', 'images/profile1.jpg');
		
		jQuery(box).appendTo("#content ul").fadeIn("fast");
		//jQuery(profileBox).prependTo(box);
		//jQuery(profileImg).prependTo(profileBox);
		jQuery(xBox).appendTo(box);
		jQuery(xBoxExtra).appendTo(box);
		
		
	}*/
	
	function boomClick() {
		// alert("boom boom boom");
		jQuery("#big-box").fadeIn();
	}
	
	var clickCheck = false;
	jQuery("#add").click(function() {
		// buildBox();
		jQuery("#new_discussion").slideToggle();
    	
    	if (clickCheck == false) {
    		clickCheck = true;
    		jQuery(this).parents(".discussion-box h2").find("span.arrow").css("background-position", "-65px -190px");
    	} else {
    		clickCheck = false;
    		jQuery(this).parents(".discussion-box h2").find("span.arrow").css("background-position", "-49px -190px");
    	}
    	
		// alert("clicked!");
		//jQuery("<li></li>").attr('id','boom').text("bam").appendTo('#content ul').click(function() {
		//alert("bam bam");
		// jQuery("#big-box").fadeIn();
		// });    
	});
	jQuery("#close").click(function() {
		// jQuery(this).hide();
		//alert("clicked!");
	});
	jQuery("#content ul li").click(function() {
		//alert("clicked!");
	});
	jQuery("#big-box").click(function() {
		jQuery(this).hide();
	});
	
	
	jQuery(".expandBox").click(function() {
		//alert("clicked!");
		jQuery(this).toggleClass("minus");
		jQuery(this).parents("li").find("ul").slideToggle("fast");
	});
	
	
	jQuery('.txt1').each(function() {
        	jQuery(this).data('default', this.value);
    	})
    	.focusin(function() {
        	if ( this.value == $(this).data('default') ) {
            	this.value = '';    
        	}
        	jQuery(this).css("color", "black");
    	})
    	.focusout(function() {
        	if ( this.value == '' ) {
            	this.value = $(this).data('default');
                 
        	}
        	
		});
		
	jQuery('.txt2').each(function() {
        	jQuery(this).data('default', this.value);
    	})
    	.focusin(function() {
        	if ( this.value == $(this).data('default') ) {
            	this.value = '';    
        	}
        	jQuery(this).css("color", "black");
    	})
    	.focusout(function() {
        	if ( this.value == '' ) {
            	this.value = $(this).data('default');
                
        	}
        	
		});
	
        jQuery(".un").each(function() { // for username field in login page
        	jQuery(this).data('default', this.value);
    	})
    	.focusin(function() {
        	if ( this.value == $(this).data('default') ) {
            	this.value = '';    
        	}
        	jQuery(this).css("color", "black");
    	})
    	.focusout(function() {
        	if ( this.value == '' ) {
            	this.value = $(this).data('default');
            	jQuery(this).css("color", "gray");    
        	}
		});
        
        
		
	
	
	var childNum;
	jQuery("#content ul ul").each(function() {
		childNum = jQuery(this).find("li").size();
		// alert(childNum);
		childNumCombo = '<span class="commentNum">' + childNum + '</span>';
		jQuery(this).parents("li").find("h2").prepend(childNumCombo).click(function() {
			jQuery(this).parents("li").find("ul").slideToggle("fast");
			//jQuery("#advertisements").toggle();
			jQuery(this).parents("li").find(".expandBox").toggleClass("minus");
                    })
                
                /* changed made by Bin, clicking on anywhere in the discussion will open the discussion.
                        jQuery(this).parents("li").click(function() {
			// alert("clicked!");
			jQuery(this).parents("li").find("ul").slideToggle("fast");
			//jQuery("#advertisements").toggle();
			jQuery(this).parents("li").find(".expandBox").toggleClass("minus");
                        });*/
	});
	
        /* fill comment box with user id */
        $('li.commentitem').find("a.replylink").click(function(){
            //alert(this.parents("li"));
            //alert("div.username #"+this.id);
            //alert($("div.username #33").val());
            //$(this).parents("ul").attr("id")) // selected the parent ul
            
            
            });
        
        
	jQuery("#flyout-expand").click(function(event) {
		event.preventDefault();
		jQuery(this).parents("#flyout").animate({
			"width": "100px"
		});
		jQuery(this).hide();
		jQuery("#flyout-minus").show();
		//jQuery(".icon-text").show();
		
	});
	
	jQuery(".icon-text").hide();
	jQuery("#flyout-minus").hide();
	jQuery("#flyout-minus").click(function(event) {
		event.preventDefault();
		jQuery(this).parents("#flyout").animate({
			"width": "30px"
		});
		jQuery(this).hide();
		jQuery(".icon-text").hide();
		jQuery(this).parents("#flyout").find("#flyout-expand").show();
	});
	
	
	/* --------- VIDEO BOX ----------- */
	var videoBoxWidth = jQuery(".video-box").width();
	var videoBoxPlacementWidth = (windowWidth - videoBoxWidth)/2 + "px";
	var videoBoxHeight = jQuery(".video-box").height();
	var videoBoxPlacementHeight = (windowHeight - videoBoxHeight)/2 + "px";
	
	jQuery(".video-box").css("left", videoBoxPlacementWidth);
	jQuery(".video-box").css("top", videoBoxPlacementHeight);
	
	
	jQuery("#video-btn").click(function(event) {
		event.preventDefault();
		//alert("video!");
		//alert(videoBoxPlacementWidth);
		jQuery(".video-box").toggle();
	});
	
	jQuery("#video-close").click(function(event) {
		event.preventDefault();
		jQuery(".video-box").hide();
	});
	/* --------- VIDEO BOX END ------------ */
        /*###########end of comment page js############*/

})