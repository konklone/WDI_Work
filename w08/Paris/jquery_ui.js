window.onload = function() {
  $("#slider").slider();



  /*** OTHER STUFF*** /
  $("#first-example").css(position: "relative");
  $("<div>H</div>").css({
  position: "absolute",
  top: "0",
  left: "0",
  width: "20px",
  background: "gainsboro",
  color: "ghostwhite",
  cursor: "pointer",
  opacity: "0.70",
  borderRadius: "5px",
  fontSize_: "1.2em"
}).click(function(e) {
  $(this).parent().slideUp();
}).appendTo( $("$first-example"));
};

$("h1").hover(function(e) {
  // $("#first-example").slideDown();
  var line = $(".animate-line");
  line.animate({width: "140"}, 150);
  line.animate({width: "100"}, 150);
  // ({prop: "val"}, time in milliseconds, callback)
});
