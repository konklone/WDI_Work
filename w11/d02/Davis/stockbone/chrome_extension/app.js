// need:
  // input stock symbol
  // render stock info
    // append stock info

$(function() {
  function renderStock(stock) {
    var parsed = JSON.parse(stock);

    var h1 = $("<h1>").text(parsed.Data.price);

    $("body").append(h1);
  }

  $("form").submit(function(e) {
    e.preventDefault();

    var route = "http://dev.markitondemand.com/Api/Quote/json?&amp;symbol=" + $("form").val();
    $.ajax({
      method: "GET",
      url: route,
      dataType: "json",
      success: renderStock,
      context: $("body")
    });
  })
})