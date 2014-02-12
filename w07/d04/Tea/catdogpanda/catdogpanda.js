$(function(){
    var body = $(document.body);
    addCat(body, 450, 450);
    addDog(body, 500, 600);
    addPanda(body);

    body.on('mousemove',function(event) {
      var coords = "( " + event.pageX + ", " + event.pageY + " )";
      $( "h1" ).text( coords );
      kitten.css("left", event.pageX);
      puppy.css("top", event.pageY).css("left", event.pageX/2);
      panda.css("top", event.pageX/2).css("left", event.pageX);

    });

    $('img').on('click', function(){
    $(this).toggleClass("blue-border");

    body.on('click', function(){
      body.off("mousemove");
    })
  })
});

function addCat(parent, width, height){
  var kittenURL = "http://placekitten.com/" + width +"/"+ height; 
  kitten = $("<img>").attr("src", kittenURL).attr("class", "cat");
  parent.append(kitten);
}

function addDog(parent){
  var puppyURL = "http://distilleryimage10.s3.amazonaws.com/5878d0fa43bd11e3869422000a1deb63_6.jpg"
  puppy = $("<img>").attr("src", puppyURL).attr("class", "dog");
  parent.append(puppy);
}

function addPanda(parent){
  var pandaURL = "http://www.pbh2.com/wordpress/wp-content/uploads/2013/04/cutest-panda-gifs-rocking-horse.gif"; 
  panda = $("<img>").attr("src", pandaURL).attr("class", "panda");
  parent.append(panda);
}
