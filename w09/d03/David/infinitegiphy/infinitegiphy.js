$(function(){
  console.log("loaded");

  getGifs("guns")

  $('#search').submit(function(e){
    e.preventDefault();
    getGifs( $('#search input').val() );
    $('#search input').val("");
  });

  $('button#add').click(function(){
    appendGif()
  });

  $(window).scroll(function(){
    if( $(window).height() + $(window).scrollTop() >= $(document).height() ) {
      console.log("bottom");
      appendGif();
    }
  });
});

var response;
var counter = 0;

function getGifs(keyword){
  $.ajax({
    url: "http://api.giphy.com/v1/gifs/search?q=" + keyword + "&api_key=dc6zaTOxFJmzC&limit=100",
    type: "GET",
    dataType: "json", 
    success: function(data){
      console.log(data);
      response = data;
    }
  });
}

function appendGif(){
   $('body').append($('<img>').attr('src', (response.data[counter].images.fixed_width.url)));
    console.log(response.data[counter].images.fixed_width.url);
    counter ++;
}



