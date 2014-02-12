// var div = $( "div.bg" );
// $( "p:last" ).text( "scrollTop:" + p.scrollTop() );

// changing the 'top' property of the background div css by a factor of how far the user has scrolled.



$(document).ready(function(){
  $(window).scroll(function (e) {
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * .75) + 'px');
    // $('.img').css('top', -(scrolled * .20) + 'px');

  });
})