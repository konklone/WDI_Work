$(function(){
  timer();
})

function timer(){

  var body = $("body");
  var box = $("<h1>").html(0).appendTo(body);
  var start = $("button#start");
  var pause = $("button#pause");
  var reset = $("button#reset");
  var lulz = $("button#lulz");
  var timerId;
  var i = 1;


  start.on("click", function(){
    timerId = window.setInterval(
      function(){
      box.html(i).appendTo(body);
      i++;
    }, 1000)
  });
  
  pause.on("click", function(){
    window.clearInterval(timerId);
  });
  
  reset.on("click", function(){
    window.clearInterval(timerId);
    box.html(0).appendTo(body);
    body.css("background","white");
    $("h1").css("color", "black");
      
    i = 0;
  });
  lulz.on("click", function(){
    $("<audio>").attr({
    'src':'/Users/macadocious/dev/wdi/WDI_NYC_Array_Work/w07/d05/McKenneth/timer/cant.mp3',
    'volume':0.7,
    'autoplay':'autoplay'
    }).appendTo(body);
    $("h1").css("color", "white");
    body.css("background", "url('http://chicheetchouette.files.wordpress.com/2013/03/mc_hammer_gif.gif')")
  })
  
}