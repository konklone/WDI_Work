// user selects space
  // need to alternate bet red & black
  // set color method
    // var red? = true
    // everytime set color method called, switch red value
    // check to see if value aaa
      // some or contains method

  // check winner(red)
  // check winner(black)
  // check tie



// fuction check winner(color)
  // array of all divs containing value = red
    // array of all coorodinate values ie r0, r01, r02
    // iterate through above array
      // return array of all divs w/ id.include? 
      // check count
      // whenever count > 2, alert( red wins )
    // array of diag1
      // iterate through array
      // check if count > 2
    // array of diag2
      // iterate through array
      // check if count > 2
// end

// function check tie
  // check to see if value aaa
// end

// var diag1 = ["r0c0", "r01c01", "r02c02"];


var checkWinner = function(color) {
  var allDivs = document.getElementsByClassName("box_cell");
  var allColoredDivs = _.filter(allDivs, function(div) {
    return div.style.backgroundColor === color;
  });
  
  var coordinates = ["r0","r01","r02","c01","c02","c03"];

  // iterate through each coordinate
  _.each(coordinates, function(coordinate) {
    
    // retrieve all colored divs whose ID contains the coordinate
    var checkArray = _.filter(allColoredDivs, function(coloredDiv) {
      return coloredDiv.style.backgroundColor.indexOf(coordinate) != -1;
    })

    win = true;

    // ternary operator available in JS
    if ( checkArray.length < 2 ) {
      win = false;
    } else {
      alert(color + " wins!");
      break;
    }
  })


}