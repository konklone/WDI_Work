$(function(){
  $(window).scroll(function(){
    var scrollbar = $(window).scrollTop();
    // console.log(scrollbar);
    // Background
    $(".bg").css("top", -(scrollbar * 0.25) + "px");
    // Kittens
    $(".top-left").css("top", -(scrollbar * 0.8) + "px");
    $(".top-center").css("top", -(scrollbar * 1) + "px");
    $(".top-right").css("top", -(scrollbar * 1.2) + "px");
    // Puppies
    $(".bottom-left").css("top", -(scrollbar * 1.5) + "px");
    $(".bottom-center").css("top", -(scrollbar * 1.7) + "px");
    $(".bottom-right").css("top", -(scrollbar * 2) + "px");

  });
});