$(function(){
   $('form#search button').click(function(e){
      e.preventDefault();
      var input = $("input[type='search']").val();

      $.ajax({
         type: "GET",
         url: 'http://api.giphy.com/v1/gifs/search?q=' + input + '&api_key=dc6zaTOxFJmzC&limit=100',
         dataType: "json",
         success: function(response){
            var gifhyres = response.data;
            gifs = [];

            $.each(gifhyres, function(index, value){
               gifs.push(value.images.fixed_height.url);
            });
            // Initialize counter for gifs array
            count = 0;         
         }
      });

   });

   $('#add').click(function(e){
      $('<img>').attr('src', gifs[count]).appendTo('body');
      count++;
   })

   $(window).scroll(function () {
   if ($(window).scrollTop() >= $(document).height() - $(window).height() - 50) {
      $('<img>').attr('src', gifs[count]).appendTo('body');
      count++;
   }
});

});