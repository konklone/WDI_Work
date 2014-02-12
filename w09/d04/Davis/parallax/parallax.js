$(function() {
  console.log("ELLO");

  $(window).scroll(function(){
    console.log("scrolling");

    var scrolled = $(this).scrollTop();

    $('.img').css('left', (scrolled * 0.25))
  })
})