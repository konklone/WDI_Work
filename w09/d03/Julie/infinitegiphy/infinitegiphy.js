




function getGifs(searchTerm){
  $.ajax({
    url: "http://api.giphy.com/v1/gifs/search?q=" + searchTerm + "&api_key=dc6zaTOxFJmzC&limit=10",
    type: "GET",
    dataType: "json",
    success: function(response){
      gifs = response;
      displayGif(searchTerm, gifs)
    }
  })
}




function displayGif(searchTerm, response){


      var data = response.data
      for (var i = data.length - 1; i >= 0; i--) {

        var pic = $("<img>").attr("src", data[i].images.original.url); 
        var body = $("body")   
        pic.appendTo(body);

   };

}


window.onload = function(){
  // searchWord = ""
  form = document.getElementById("search");
  form.addEventListener("submit", function(e){
    e.preventDefault();
    searchWord = form.value

    getGifs($("input").val());
    form.value = "";
  });


}







