var lyrics = ["and a Partridge", "turtle doves", "french hens", "calling birds", "golden rings",
          "geese", "swans", "maids", "ladies", "lords", "pipers", "drummers"];


function singsong(days) {
  if (days === 0){
    return console.log(lyrics[0]);
  }
  else {
    console.log(days + 1, lyrics[days]);
   
    return singsong(days-1);
  }
};

// for(var i=0; i<12; i++){
//   singsong(i);
// }

function song(verse) {
  if (verse === 11){
    return singsong(11);
  }
  else {
    singsong(verse)
    return song(verse+1);
  }
}

song(0);