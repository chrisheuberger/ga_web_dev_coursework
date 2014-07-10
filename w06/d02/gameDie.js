function GameDie(numSides){
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var result = Math.floor(Math.random() * this.numSides) + 1;
    console.log(result)
  }
}

var mySixteenSidedDie = new GameDie(16);
var myElevenSidedDie = new GameDie(11);

mySixteenSidedDie.roll()
myelevenSidedDie.roll()
