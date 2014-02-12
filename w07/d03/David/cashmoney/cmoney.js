console.log("C-money enterprises loaded...");

function dollar( message ){
  alert( message );
}

// myFunc();
// myFunc.call(window);

// Hangman.newGame();
// newGame.call(Hangman);


$(function(){
  dollar("STRAIGHT CASH HOMEY");
});


// // window.addEventListener("load", $);
// window.addEventListener("load", function(){
//   document.getElementById("banner").addEventListener("click", $);
// });


$("li").addClass("believe")
        .on('click', function(){
           alert("HOLA");
        })
        .on('mouseover', function(){
           $(this).css("background-color", "black");
        })
        .on('mouseout', function(){
           $(this).css("background-color", "green");
        });