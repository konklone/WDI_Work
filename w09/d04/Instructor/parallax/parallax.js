$(document).ready(function() {
  $(window).scroll(function(e){
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * 0.25) + 'px');
    $('.top-left').css('top', (scrolled * 0.8) + 'px');
    $('.top-center').css('top', (scrolled * 0.7) + 'px');
    $('.top-right').css('top', (scrolled * 0.6) + 'px');
    $('.bottom-left').css('top', (scrolled * 0.8) + 'px');
    $('.bottom-center').css('top', (scrolled * 0.7) + 'px');
    $('.bottom-right').css('top', (scrolled * 0.6) + 'px');
  });
});