$(function(){//DOMContentLoaded
  $(`<link rel="stylesheet" href="css/style.css"/>`)
  .appendTo("header");
  function Header(result){
    $(result).replaceAll("header");
  }
  
})