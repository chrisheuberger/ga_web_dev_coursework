function BoyPopStar(name, haircut){
  this.name     = name;
  this.haircut  = haircut;
  this.moves    = [];
}

BoyPopStar.prototype.learnMoves = function(move){
  this.moves.push(move);
  return this.moves;
}

function cizzurp(n){
  for (var i = 1; i <= n; i++){
    var string = ""
    if (i % 3 === 0){
      string += "cizz";
    }
    if(i % 5 === 0){
      string += "urp";
    }
    // if (string === ""){
    //   string += i;
    // }
    console.log(string || i);
  }

}
BoyPopStar.prototype.cizzurp = cizzurp;

