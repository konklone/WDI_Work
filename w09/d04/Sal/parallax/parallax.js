$(document).ready(function(){

$(window).scroll(function(e){
    parallax();
})
    
 
});

function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * .25) + 'px');
    $('.top-left').css('top', (scrolled * 1) + 'px')
    $('.top-center').css('top', (scrolled * 2) + 'px')
    $('.top-right').css('top', (scrolled * 3) + 'px')
}


