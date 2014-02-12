window.onload = function() {


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


  $("#slider").slider({
    min:50,
    max: 320,
    value: 320,
    step: 10,
    slide: function(event, ui){
      $("#cats img").attr("src", "http://www.placekitten.com/g/" + (ui.value-20) + "/" + (ui.value-20));
      $("#cats img").css("margin-top", (340-ui.value)/2);
    }
  })


  $("#first-example").css("position","relative");
  $("<div>H</div>").css({
    position: "absolute",
    top: "0",
    left: "0",
    height: "20px",
    width: "20px",
    background: "gainsboro",
    color: "pointer",
    opacity: "0.70",
    borderRadius: "5px"
  }).click(function(e){
    $(this).parent().slideUp();
  }).appendTo( $("#first-example") );

  $("h1").click(function(e)) {
    $("#first-example").slideDown();

    var line = $("#animate-line");

    line.animate({width: "140"}, 150);
  };
};

