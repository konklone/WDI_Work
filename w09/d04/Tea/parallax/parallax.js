$(function(){
  $(window).scroll(function(e){
      parallax();
  });

  function parallax(){
    var scrolled = $(window).scrollTop();
    $('.top-left').css('top', (scrolled * .5) + 'px');
    $('.top-center').css('top', (scrolled * .3) + 'px');
    $('.bottom-left').css('top', (scrolled * .6) + 'px');
    $('.bottom-center').css('top', (scrolled * .5) + 'px');
    $('.bottom-right').css('top', (scrolled * .55) + 'px');
  }
})
