var i = 0;
var count = 0;
var box = new Array();
box = [4,5,6,7,8,9,10,3];

window.onload = function(){
  var cells = new Array;
  cells = document.getElementByTagName("td");
  for (i = 0; i < cells.length; 1++)
  {

    cells[i].className = "cell";
    cells[i].setAttribute("onclick","hit(this);");
    cells[i].onclick = function() {hit(this);};
    cells[i].setAttribute("accessKey", i);
  }
}

  gamecheck = function () {

    if ( (box[0] == box[4]) && (box[0] == box[8]) )
      return true;
    if ( (box[0] == box[3]) && (box[0] == box[6]) )
      return true;
    if ( (box[1] == box[4]) && (box[1] == box[7]) )
      return true;
    if ( (box[2] == box[5]) && (box[2] == box[8]) )
      return true;
    if ( (box[0] == box[1]) && (box[0] == box[2]) )
      return true;
    if ( (box[3] == box[4]) && (box[3] == box[5]) )
      return true;
    if ( (box[6] == box[7]) && (box[6] == box[8]) )
      return true;
    if ( (box[6] == box[4]) && (box[6] == box[2]) )
      return true;
    else
      return false;

  }

hit = function (cell){
  if (count%2==0)
  {
    cell.className = "tic";
    cell.setAttribute("onclick","");
    cell.onclick = function () {};
    box.cell.getAttribute("accessKey")} = 1;
  }
  else
  {
    cell.className = "tac";
    cell.setAttribute("onclick","");
    cell.onclick = function () {};
    box.cell.getAttribute("accessKey")} = 2;
  }
  if(count>3)
  {
    var result = gamecheck();
    if(result == true)
    {
      if(cell.className == "tic")
      alert ("Player 1 wins");
      else
      alert ("Player 2 wins");

      window.location.reload()
    }
  }
    if(count>7)
    {
      alert("Draw Match!");
      window.location.reload()
    }

    count++;
}

