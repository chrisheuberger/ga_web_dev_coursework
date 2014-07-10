// PLAYER

function Player(){
  //player should be an object w/ attributes move and score => player1 = new Player(0)
  this.move = undefined;
  this.score = 0;
};

Player.prototype = {

  move: function (move){
    weapons = {'r':'rock', 'p': 'paper', 's'= 'scissors'}
    var move = this.move;
    return this.move;
  },
  scorePlayer1: function scorePlayer1(){
    return this.scorePlayer1;
  }
};

// // PLAYER 2

// var player1 = function Player1(){
//   this.movePlayer1 = movePlayer1;
//   this.scorePlayer1 = scorePlayer1;
// };

// Player1.prototype = {
//   movePlayer1: function movePlayer1(){
//     return this.movePlayer1;
//   },
//   scorePlayer1: function scorePlayer1(){
//     return this.scorePlayer1;
//   }
// };

// GAMEPLAY

function winningMove(movePlayer1, movePlayer2) {
    var winningRules = {
        'rock': 'scissors',
        'paper': 'rock',
        'scissors': 'paper'
    }
    if(winningRules[movePlayer1] == movePlayer2) {
        return movePlayer1;
    }
    if(winningRules[movePlayer2] == movePlayer1) {
        return movePlayer2;
    }
    return false;
};

function scoreGame(player1, player2) {
  if (winningMove(player1.move, player2move) == player1.move){
    player1.score += 1
  }
  else if (winningMove(player1.move, player2move) == player2.move){
    player2.score += 1
  }
  else {
    player1.score == 0;
    player2.score == 0;
  }
  if (player1.score || player2.score == 3){
    victory();
  }
}

function victory(player1, player2){
  alert('Congratulations! game is over : )')
}
