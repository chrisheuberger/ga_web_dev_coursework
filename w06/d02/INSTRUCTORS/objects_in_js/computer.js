
//  Write a constructor function & modify the prototype for a Computer object
//   - Properties should include:
//     - screenSize
//     - osVersion
// - Instantiate 4 computer objects using the `new` keyword
// - Without touching any of the instances, modify the osVersion for all the computers
// ---

function Computer(screenSize){
  this.screenSize = screenSize;
}

Computer.prototype.osVersion = 'Mt Cat';
// Computer.prototype = {osVersion: 'Mt Cat'};

var comp1 = new Computer(12);
var comp2 = new Computer(13);
var comp3 = new Computer(14);
var comp4 = new Computer(15);

Computer.prototype.osVersion = 'Snow Cat'
