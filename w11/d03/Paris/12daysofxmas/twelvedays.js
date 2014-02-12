

function days(n) {
    var stuff = "On the nth day of Christmas my true love gave to me: "
    var stuff2 = " and a Partridge in a Pear Tree."
  // var twelfth = "12 Drummers Drumming"
  // var eleventh = "11 Pipers Piping"
  // var tenth = "10 Lords a Leaping"
  //  var ninth = "9 Ladies Dancing"
  // var eighth = "8 Maids a Milking"
  //  var seventh = "7 Swans a Swimming"
  //  var sixth = "6 Geese a Laying"
  //  var fifth ="5 Golden Rings"  
  //  var fourth = "4 Calling Birds"
  //  var third = "3 French Hens"
   var second = "2 Turtle Doves"
    if (n === "first"){
      return console.log("On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.");
    }
    else if (n === "second") { 
      return console.log(stuff + second + stuff2);
    }
}




// "12 Drummers Drumming"
// "11 Pipers Piping"
// "10 Lords a Leaping"
// "9 Ladies Dancing"
// "8 Maids a Milking"
// "7 Swans a Swimming"
// "6 Geese a Laying"
// "5 Golden Rings"
// "4 Calling Birds"
// "3 French Hens"
// "2 Turtle Doves"

// "and a Partridge in a Pear Tree"

console.log(days("second"))


