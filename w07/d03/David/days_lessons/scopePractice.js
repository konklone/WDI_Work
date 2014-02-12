function playWithScope() {
  // shmee in playWithScope house
  var shmee = "Blah";
  // notQuiteGlobal in playWithScope house
  var notQuiteGlobal = "Hooplah";
  // globalShmee global -- in window
  globalShmee = "Blooh";
  
  function insideFunc() {
    console.log("insideFunc called");
    console.log(notQuiteGlobal);
    // Here shmee is undefined -- because there is a local variable shmee defined below
    // it is aware it is about to be declared, but is yet undefined: PRECOG
    // if we did not define shmee below, our console.log here would be "Blah"
    console.log(shmee);

    var shmee = "Bleeh";
    // no var is declared, but is declared in playWithScope, so is global/bound to playWithScope
    notQuiteGlobal = "Heeplah";

    console.log("insideFunc end");
    console.log(notQuiteGlobal);
    console.log(shmee);
  }

  insideFunc();

  console.log("playWithScope end.")
  // now shmee is back to being "BLAH", because it was prefixed with var in both functions
  console.log(shmee);
  // this remains "Heeplah", because when it was redefined in insideFunc, it was not prefixed with a var, where as it was prefixed with var in playWithScope function
  console.log(notQuiteGlobal);
}