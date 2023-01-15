



// The new keyword starts a three step process
  //  1.  Creates a new object
  //  2.  Sets the objects __proto__ to the functions prototype
  //  3.  Evalutes the contructor function with the objects as this

// Constructor Function
function Person (name){
  this.name = name;
}

Person.prototype = {
  warmBlooded: true,
  jump: function(){
    console.log('JUMP JUMP JUMP JUMP');
  }
}

var lich = new Person('Lichard')
var bod = new Person('Bod')

Person.prototype.corey = 'yeah I know how to corey'
// Does lich know how to corey?  NO... but lich's __proto__ does!

