// var player1 = document.querySelectorAll("#player1_strip td")
// var player2 = document.querySelectorAll("#player2_strip td")


// // var currentPositionPlayer1 = player1[0]  // [0] for first position
// // var currentPositionPlayer2 = player2[0]


// var positionPlayer1 = 0 // [0] for first position
// var positionPlayer2 = 0







// // var update_player_position = function somthing like adding 1 to the current position on .addEventListner(keyup)
// // player1[3,2].setAttribute("class", "null", "class", "active")

// // update_player_position('player1', 3);


// // document.getElementById("player1_strip")
// // var track1 = document.getElementById("player1_strip")
// // var currentPosition = track1.getElementsByClassName("active")
// ;
// var move = function(player, i) {

//   player[i].setAttribute("class", "inactive")
//   // if (i==1) {
//   //   currentPositionPlayer1 = player1[0+1];
//   // ]
//   // else {
//   //   currentPositionPlayer2 = currentPositionPlayer1 += 1;
//   // }
//   player[i+1].setAttribute("class", "active")

// }





// Working code below


var player1 = document.querySelectorAll("#player1_strip td");
// var player2 = document.querySelectorAll("#player2_strip td")

var positionPlayer1 = 0; // initialize position
// var positionPlayer2 = 0

var key = function(key_input) {
  event.keyCode==81 //the letter q
    move(player1)

  // if event.keyCode===80 //the letter p
  //   move(player2)
};
var move = function(keyCode, player) {
  if(keyCode ===81) {
  player[positionPlayer1].setAttribute("class", "inactive")
  positionPlayer1 += 1
  player[positionPlayer1].setAttribute("class", "active")
}
}
var el = document.getElementById("player1_strip");

// for(var i=0; i<=1; i++) {
// el.addEventListener("keyup", key(81));
// }




// var some_function = function(code) {
//   if(code === 80){
//     console.log("hi");
//   }
// }

window.onload = function() {

  document.addEventListener('keyup', function(e) {
    move(e.keyCode, player1)
  }, false)

}




