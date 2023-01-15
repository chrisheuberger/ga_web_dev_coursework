function BoyPopStar(name, haircut){
  this.name = name;
  this.haircut = haircut;
  this.moves = [];
}

BoyPopStar.prototype.learnMoves = function(move){
  this.moves = move
}

BoyPopStar.prototype.cizzurp = function(n){
  var array = [];

  for (var i = 1; i <= n; i++) {
    array.push(i);
  },

  for (var i = 1; i <= n; i++) {
  if array[i] % 3 === 0;
      return 'cizz';
    else if array[i] % 5 === 0;
      return 'urp';
    else if array[i] % 5 && array[i] % 3 === 0;
      return 'cizzurp';
    else;
      return array[i];
  }
}

var boy = new BoyPopStar('bob','bob')