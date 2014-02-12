window.onload = function(){


var canvas = document.getElementById("circle");
var ctx = canvas.getContext("2d");

$('canvas').css({width: "300", height: "300"})

startAngle = 0;
endAngle = (Math.PI/180) * 360;

ctx.beginPath();
ctx.lineWidth = 10;
ctx.strokeStyle = "blue";
ctx.arc( canvas.width/2, canvas.height/2, 35, startAngle, endAngle, false );
ctx.stroke()
ctx.closePath();



// var bar = $("#progressbar"),
//       lbl = $(".progress-label");

//   bar.progressbar({
//     value: 0,
//     change: function(event, ui) {
//       lbl.text( bar.progressbar("value") + "%" );
//     },
//     complete: function(event, ui) {
//       lbl.text( "Complete!" );
//     }
//   });

//   function startProgress(){
//     bar.progressbar("value", false);
//     lbl.text("Waiting!");
//   }

//   function continueProgress(){
//     var val = bar.progressbar("value");
//     bar.progressbar("value", val + 1);

//     $("#third-example button").text(Math.round(9-(val/100)*9) + " seconds");

//     if (val < 99){
//       setTimeout( continueProgress, (1000/9) );
//     }
//   }

//   $("#third-example button").click(function(){
//     startProgress();
//     setTimeout(continueProgress, 2000);
//     $(this).text("9 seconds");
//   });





/****** SORTABLE TO JSON *******/
  // $("#sortable").sortable({
  //   placeholder: "ui-state-highlight",
  //   update: function(event, ui){
  //     var position = $(ui.item).index();
  //     var dataVal = $(ui.item).data("val");
  //     //console.log(position + ": " + dataVal);

  //     console.log(
  //       JSON.parse("{" + $("#sortable li").map(
  //         function(index, li){
  //           return "\"" + index + "\": \"" + $(li).data("val") + "\"";
  //         }
  //       ).toArray().join(", ") + "}")
  //     );
  //   }
  // });

  $('#slider').slider({
    min: 50,
    max: 320,
    value: 320,
    step: 10,
    slide: function(event, ui) {
      console.log(ui);
      $("#cats img").attr("src", "http://www.placekitten.com/g/" + (ui.value-20) + "/" + (ui.value-20));
      $("#cats img").css("margin-top", (340-ui.value)/2);
    }
  });

  $("#cats img").click(function(e){alert("this pic is: " + $(this).attr("src") );})


/***** DUMB ANIMATIONS WITH JQUERY ****/
  $("#first-example").css("position", "relative");
  $("<div>H</div>").css({
    position: "absolute",
    top: "0",
    left: "0",
    height: "30px",
    width: "30px",
    background: "gainsboro",
    color: "black",
    cursor: "pointer",
    opacity: "1",
    borderRadius: "5px",
    fontSize: "1.2em"
  }).click(function(e){
    $(this).parent().slideUp();
  }).appendTo( $("#first-example"));

  $('h1').click(function(e){
    $("#first-example").slideDown(10000);
  });

  $('h1').hover(function(e){
    var line = $(".animate-line");
    line.animate({width: "140px"}, 300);
    line.animate({width: "100px"}, 300);
  });
  


}