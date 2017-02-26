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
//= require twitter/bootstrap
//= require_tree .
function check(){
  var check=document.getElementsByTagName('input');
  for(var i=0;i<check.length;i++){
    if(check[i].type=='checkbox'){
      check[i].checked=true;
    }
  }
}

function uncheck(){
 var uncheck=document.getElementsByTagName('input');
 for(var i=0;i<uncheck.length;i++){
    if(uncheck[i].type=='checkbox'){
     uncheck[i].checked=false;
    }
  }
}