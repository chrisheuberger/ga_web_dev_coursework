function Computer (screenSize){
  this.screenSize = screenSize;
}

Computer.prototype.osVersion = 'Mt Cat';

var comp1 = new Computer(12);
var comp2 = new Computer(13);
var comp3 = new Computer(14);
var comp4 = new Computer(15);

Computer.prototype.osVersion = 'MavyRick';

comp2.osVersion
