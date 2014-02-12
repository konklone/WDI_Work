var count = 0;
var name1;
var name2;

// clear the board at start
function Start()
{
    count = 1;
    document.getElementById("r0c0").className="box_cell";
    document.getElementById("r0c1").className="box_cell";
    document.getElementById("r0c2").className="box_cell";
    document.getElementById("r1c0").className="box_cell";
    document.getElementById("r1c1").className="box_cell";
    document.getElementById("r1c2").className="box_cell";
    document.getElementById("r2c0").className="box_cell";
    document.getElementById("r2c1").className="box_cell";
    document.getElementById("r2c2").className="box_cell";
   
    name1 = document.getElementById("name1").value;
    name2 = document.getElementById("name2").value;
   
    DisplayPlayer();
}

// calculate the win
function CheckforaWin()
{
    // create variables to call up the player's moves by location on the grid.
    var r0c0 = document.getElementById("r0c0").className;
    var r0c1 = document.getElementById("r0c1").className;
    var r0c2 = document.getElementById("r0c2").className;
    var r1c0 = document.getElementById("r1c0").className;
    var r1c1 = document.getElementById("r1c1").className;
    var r1c2 = document.getElementById("r1c2").className;
    var r2c0 = document.getElementById("r2c0").className;
    var r2c1 = document.getElementById("r2c1").className;
    var r2c2 = document.getElementById("r2c2").className;
   
   // define the rows, columns and diagonals of x's to the win condition.
    if ((r0c0 == r0c1) && (r0c1 == r0c2) && (r0c0 == 'box_cell X')
        ||(r1c0 == r1c1) && (r1c1 == r1c2) && (r1c0 == 'box_cell X')
        ||(r2c0 == r2c1) && (r2c1 == r2c2) && (r2c0 == 'box_cell X')
        ||(r0c0 == r1c0) && (r1c0 == r2c0) && (r0c0 == 'box_cell X')
        ||(r0c1 == r2c1) && (r2c1 == r2c1) && (r0c1 == 'box_cell X')
        ||(r0c2 == r1c2) && (r1c2 == r2c2) && (r0c2 == 'box_cell X')
        ||(r0c0 == r1c1) && (r1c1 == r2c2) && (r0c0 == 'box_cell X')
        ||(r0c2 == r1c1) && (r1c1 == r0c0) && (r0c2 == 'box_cell X'))
        {
            count = 0;
            document.getElementById("caption").innerHTML=name1+" wins";
        }
    // define the rows, columns and diagonals of x's to the win condition.
    else if ((r0c0 == r0c1) && (r0c1 == r0c2) && (r0c0 == 'box_cell O')
        ||(r1c0 == r1c1) && (r1c1 == r1c2) && (r1c0 == 'box_cell O')
        ||(r2c0 == r2c1) && (r2c1 == r2c2) && (r2c0 == 'box_cell O')
        ||(r0c0 == r1c0) && (r1c0 == r2c0) && (r0c0 == 'box_cell O')
        ||(r0c1 == r2c1) && (r2c1 == r2c1) && (r0c1 == 'box_cell O')
        ||(r0c2 == r1c2) && (r1c2 == r2c2) && (r0c2 == 'box_cell O')
        ||(r0c0 == r1c1) && (r1c1 == r2c2) && (r0c0 == 'box_cell O')
        ||(r0c2 == r1c1) && (r1c1 == r0c0) && (r0c2 == 'box_cell O'))
        {
            count = 0;
            document.getElementById("caption").innerHTML=name2+" wins";
        }
    // if on the 10th move, either condition has not been met then call the draw.
    else if (count == 10)
    {
        count = 0;
                    document.getElementById("caption").innerHTML="Draw!";

    }
}

// keep track of players' turns
function DisplayPlayer()
{               
    if (count != 0)
    {
        if ((count == 1) || (count == 3) || (count == 5) || (count == 7) || (count == 9))
            document.getElementById("caption").innerHTML=name1+"'s turn";
        else
            document.getElementById("caption").innerHTML=name2+"'s turn";
    }
}

// identify each player with either x or o. X and O are class names styled in the CSS with red and black.
function Play(id)
{   
    // if the square is empty
    var x = document.getElementById(id).classList;
    if ((count != 0) && (x != 'box_cell X') && (x != 'box_cell O'))
    {
        // mark with red
        if ((count == 1) || (count == 3) || (count == 5) || (count == 7) || (count == 9))
        document.getElementById(id).classList.add("X")
        else
        // mark with black
        document.getElementById(id).classList.add("O")

        // call the methods and increment the turns
        count++;
        DisplayPlayer();
        CheckforaWin();
    }
}