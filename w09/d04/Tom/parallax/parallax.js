$(document).ready(function(){
  $(window).scroll(function(e){
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * 0.25) + 'px');
  });
});