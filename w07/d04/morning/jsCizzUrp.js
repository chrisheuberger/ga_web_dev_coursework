function BoyPopStar(name, haircut){
  this.name = name
  this.haircut = haircut
  this.moves = [];
};

 BoyPopStar.prototype.learnMoves = function(move){
    this.moves.push(move);
  };

var beiber = new BoyPopStar('beebs', 'bad haircut');
beiber.learnMoves("The Corey");
beiber.moves

function cizzurp(n){
  for (var i = 0; i <= n; i++){
    var string = '';
    if (i % 3 === 0){
      string t= 'cizz';
    }
    if (i % 5 === 0) {
      string t= 'urp';
    }
    if (string === ''){
      string += i;
    }
    console.log(string);
  };
};

BoyPopStar.prototype.cizzurp = cizzurp();
