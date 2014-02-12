# My Javascript Logic Recipie
# ===
# I have found that the Javascript work we have done so far is very easy to encapsulate in logical steps.  When starting new javascript work, here is the little cookbook/recipie I follow.
# 
# ### 1) Datamodeling ###
# I am going to define the object as the game.  So that I can say myGame = new TicTacToe();
# 
# My game needs a board.  It needs players, but X always goes first.  And the game is either won or unwon but when it starts, there is no winner.  I think my game should have how many moves have been played (but this could also be figured out by inspecting the board).
# 
# The actions I will have are only two: make a move, and see if someone has won.  
# 
# ### 2) Set up the object
# This is just translating the data model into javascript.
# 
# ```
# var TicTacToe = function(){
#   this.board = [0,0,0,0,0,0,0,0,0];
#   this.moveCount = 0;
#   this.player = 1 //start as x, o is represented by -1  
#   this.won = false;
# }
# ```
# 
# ### 3) Set up the object methods to provide basic interaction via console.
# This is translating the verbs of the data model into methods in javascript, aka Prototyping.  As I do this, I find there are often helper functions which I want to have but that I do not plan on being part of how I will interact with the object, aka SwitchPlayer.  I also discover functions which I need to just do the interaction on the console but which won't be used by the logic of the program, aka quickprint.
# 
# ```
# TicTacToe.prototype.quickPrint = function(){
#   console.log(this.board);
# }
# 
# TicTacToe.prototype.switchPlayer = function(){
#   this.player = -this.player;
# }
# 
# TicTacToe.prototype.makePlay = function(position){
#   if (this.board[position]==0){
#     this.board[position]=this.player;
#     this.switchPlayer();
#     this.moveCount++;
#     }
# }
# ```
# 
# At this point, I can load the console and do things like myGame.makePlay(0) and myGame.checkForWin();
# 
# 
# ###4) Get the buttons on the screen
# Now comes the part where the interactivity happens!  First I set up variables for everything on the screen that I plan on being able to interact with.  This requires figuring out how to walk the DOM to get the element you need.
# 
# ```
# var elSetColor = document.getElementById("set-color");
# var colorField = document.getElementById("color-field");
# var brush = document.querySelector(".brush");
# ```  
# 
# ###5) Add Event Listeners (with handler)
# Now that I have the variables, it is easy to add event listeners to the ones that are going to be interactive.  In this case, I have a button which I need to be able to click on and the actual text field itself which I need to be able to press enter in.  Thus two event listeners.
# 
# ```
# elSetColor.addEventListener("click", function(){
#     changeBrushHandler();
#   });
#   
# colorField.addEventListener("keypress", function(event){
#     if (event.which == 13 || event.keyCode == 13) {
#      changeBrushHandler();
#     }
#   });
# ```
# In this code, I am using a handler function which does all the actual business of what happens when the click is made.  This is easy because now when I need to get the value, I already have a variable for where the value is - `colorField`.  So all I have to do is say `colorField.value`
# 
# ###6) Create Divs / Update DOM
# 
# This is a little recipie I learned from Julie.  It consists of 4 steps - which are basically steps 4 and 5 above but with a little modifcation. 
# 
# 1. create a variable to hold your new html element
# 2. change that variable as needed
# 3. give it an event listener at the moment of creation so you don't have to later walk the dom to get it.
# 4. and finally insert your new element into the DOM using appendChild
# 
# 
# ```
# var newDiv = document.createElement("div");
# 
# newDiv.className = "square";
#     
# newDiv.addEventListener("mouseover", function(){
#   var color = document.querySelector(".brush").style.background;
#   this.style.background = color;
# });
# 
# document.body.appendChild(newDiv);
#  ```
#  
#  -----
#  
