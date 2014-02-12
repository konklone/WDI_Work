
window.onload = function() {

  /***** CANVAS API ****/
  var canvas = document.getElementById("circle");
  var ctx = canvas.getContext("2d");

  $(canvas).css({width: "300", height: "150"});

  startAngle = 0;
  endAngle = (Math.PI/180) * 360;

  ctx.beginPath();
  ctx.lineWidth = 10;
  ctx.strokeStyle = "blue";
  ctx.arc( canvas.width/2, canvas.height/2, 35, startAngle, endAngle, false );
  ctx.stroke();
  ctx.closePath();

  /***** PROGRESS BAR ***/
  var bar = $("#progressbar"),
      lbl = $(".progress-label");

  bar.progressbar({
    value: 0,
    change: function(event, ui) {
      lbl.text( bar.progressbar("value") + "%" );
    },
    complete: function(event, ui) {
      lbl.text( "Complete!" );
    }
  });

  function startProgress(){
    bar.progressbar("value", false);
    lbl.text("Waiting!");
  }

  function continueProgress(){
    var val = bar.progressbar("value");
    bar.progressbar("value", val + 1);

    $("#third-example button").text(Math.round(9-(val/100)*9) + " seconds");

    if (val < 99){
      setTimeout( continueProgress, (1000/9) );
    }
  }

  $("#third-example button").click(function(){
    startProgress();
    setTimeout(continueProgress, 2000);
    $(this).text("9 seconds");
  });

  /****** SORTABLE TO JSON **********/
  $("#sortable").sortable({
    placeholder: "ui-state-highlight",
    update: function(event, ui){
      var position = $(ui.item).index();
      var dataVal = $(ui.item).data("val");
      //console.log(position + ": " + dataVal);

      console.log(
        JSON.parse("{" + $("#sortable li").map(
          function(index, li){
            return "\"" + index + "\": \"" + $(li).data("val") + "\"";
          }
        ).toArray().join(", ") + "}")
      );
    }
  });




  /**** FUN CAT SLIDER ANIMATION w/ JQUERYUI WIDGET ****/
  $("#slider").slider({
    min: 50,
    max: 320,
    value: 320,
    step: 10,
    slide: function(event, ui) {
      $("#cats img").attr("src", "http://www.placekitten.com/g/" + (ui.value-20) + "/" + (ui.value-20));
      $("#cats img").css("margin-top", (340-ui.value)/2);
      //console.log(ui);
    }
  });

  $("#cats img").click(function(e){ alert( "This pic is: " + $(this).attr("src") ); });



  /***** DUMB ANIMATIONS WITH JQUERY *******/
  $(".hideable").css("position","relative");
  $("<div>H</div>").css({
    position: "absolute",
    top: "2px",
    left: "2px",
    height: "30px",
    width: "30px",
    background: "gainsboro",
    color: "black",
    cursor: "pointer",
    opacity: "1.0",
    borderRadius: "5px",
    fontSize: "1.2em",
    lineHeight: "1.6em"
  }).click(function(e) {
    $(this).parent().slideUp();
  }).appendTo( $(".hideable") );

  $("h1").click(function(e) {
    $(".hideable").slideDown();
  });

  $("h1").hover(function(e) {
    var line = $(".animate-line");

    line.animate({width: "140"}, 150);
    line.animate({width: "100"}, 150);
  });

};
