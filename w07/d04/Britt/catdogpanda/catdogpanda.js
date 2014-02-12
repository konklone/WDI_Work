$( function(){
  var cat = $("<img>").attr({"src": "http://placekitten.com/500/500", "class": "cat"});

  var dog = $("<img>").attr({"src": "http://placedog.com/480/500", "class": "dog"});

  var panda = $("<img>").attr({"src": "http://www.cutepandapictures.com/wp-content/uploads/2012/07/babypandahugsatree.jpg", "class": "panda"});

  cat.appendTo( $("body") );
  dog.appendTo( $("body") );
  panda.appendTo( $("body") );

  $("body").mousemove( function(ev){
    $("h1#coords").text("x: " + ev.pageX + ", y: " + ev.pageY);

    var topCat = ev.pageY / 3;
    var leftCat = ev.pageX / 3;
    var topDog = -(ev.pageY / 2);
    var leftDog = -(ev.pageX / 7);
    var topPanda = ev.pageY / 2;
    var leftPanda = -(ev.pageX / 2);

    $("img.cat").css( {"margin-top": topCat, "margin-left": leftCat} );
    $("img.dog").css( {"margin-top": topDog, "margin-left": leftDog} );
    $("img.panda").css( {"margin-top": topPanda, "margin-left": leftPanda} );
  } );

  $("img").click( function(ev){
    ev.stopPropagation();
    $(this).toggleClass("border");
  } );

  $("body").click( function(){
    $(this).off("mousemove");
  } );

} )
