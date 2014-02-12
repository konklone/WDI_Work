var giphs; 
var count=0; 

function getGiphs() {
  $('form').on('submit', function(e){
    e.preventDefault(); 

    var searchField = $('input[type="search"]').val(); 
    // var querySearch = searchField.replace(" ", "+"); 
    var apiKey = "&api_key=dc6zaTOxFJmzC" 
    var giphLimit = "&limit=100"

    $.ajax({
      url: "http://api.giphy.com/v1/gifs/search?q=" + searchField + apiKey + giphLimit,
      type: "GET",
      context: this,
      dataType: "json",
      success: function(response){
        giphs = response; 
        console.log(giphs);
        count = 0; 
      } 
    });
  }); 
}; 

function attachGIPH() {
  $('#add').on('click', function(e){
    img = $("<img src=" + giphs.data[count].images.fixed_height.url + ">"); 
    $('body').append(img); 
    count++; 
  }); 
}; 

function windowScroll(){
  $(window).scroll(function(){
    if($(window).scrollTop() + $(window).height() >= $(document).height()){
      img = $("<img src=" + giphs.data[count].images.fixed_height.url + ">"); 
      $('body').append(img); 
      count++;
    }
  }); 
} 

$(function(){

  getGiphs(); 
  attachGIPH(); 
  windowScroll(); 

}); 

