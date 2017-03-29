// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('table').DataTable({
  	responsive: true
  });

  $('select').select2();
 	$("span.select2").css("width", "+=15");	

 	$("input[type=text]").addClass("form-control");
 	$("textarea").addClass("form-control");
 	$("div.field").addClass("form-group");
 	$("form").wrap("<div class='form-box col-md-8 col-md-offset-1'></div>");

 	$("a:contains('Back')").wrap("<button class=\"btn btn-primary top-left-corner\"></button>");
	$("a:contains('Back')").css("color", "white");
	$("button a:contains('Back')").before("<span class=\"glyphicon glyphicon-menu-left\"></span>");
	$("a:contains('Show')").wrap("<button class=\"btn btn-info\"></button>").css("color", "white");
	$("a:contains('Edit'):not(.edit-account)").wrap("<button class=\"btn btn-warning\"></button>").css("color", "white");
	$("a:contains('Destroy')").wrap("<button class=\"btn btn-danger\"></button>").css("color", "white");
	$("a[href*='new']").wrap("<button class=\"btn btn-success\"></button>").css("color", "white");
});