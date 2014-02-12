function moveBackground(){
  
  offset = $(window).scrollTop() * 1.5;
  console.log(offset);
  $('.bg').css("top", -offset);
  $('.top-left').css("top", (-offset * 1.2));
  $('.top-center').css("top", (offset * 1.1));
  $('.top-right').css("right", -offset);

  $('.bottom-left').css("top", (-offset * 1.2));
  $('.bottom-left').css("right", (-offset * 1.9));
  
  $('.bottom-center').css("top", (-offset * .8));
  $('.bottom-right').css("left", -offset);
   
}

window.onload = function(){
  console.log("hello, cats and dogs floating in the sky.");

  $(window).scroll(moveBackground);

}