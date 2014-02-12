$(function(){
  $(window).scroll(function(){

   var position = $(window).scrollTop();
   $('.bg').css('top', -position/5);
   $('.top-left').css('top', position/2);
   $('.top-center').css('top', position/10);
   $('.top-right').css('top', position/2);
   $('.bottom-right').css({'top': position/3, 'right':position/8});
   $('.bottom-center').css({'top': -position/10});
   $('.bottom-left').css({'top': position/3, 'right':-position/8});
   if ( position + $(window).height() === $(document).height() ) {
    $('img').hide();
    $('img.clown').css('display', 'block');
    $('h1').text('Scary Clowns!!!');
   };
  });
});
$(window).scroll(function() {
  console.log("window height: " + $(window).height());
  console.log("window scroll top: " + $(window).scrollTop());
  console.log("document height: " + $(document).height());
});