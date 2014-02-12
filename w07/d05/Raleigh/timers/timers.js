$(function(){
   addEvents();
});

function addEvents(){
   var clock = $("#timer");

   var timerId = 0;
   var m = 0;
   var s = 0;

   function setTimer(){
      // for as long as s<60... then m++ and s = 0
         s++
         if(s<10){
            s = "0"+s;
         }

      clock.text("Time Elapsed " + m+":"+s)
   }

   $("#reset").on('click', function(){
      s = 0;
      clearInterval(timerId);
      clock.text("Time Keeper");
   });

   $("#start").on('click', function(){
      timerId = setInterval(setTimer, 1000); 
   });

   $("#pause").on('click', function(){
      clearInterval(timerId);
   });
};
