// js comments

var myJSNameArray = ['lich', 'da', 'grey'];

function multiply(x, y){
  return (x * y);
}

// passing the multiply function around
var multiply = function multiply(x, y){
  return (x * y);
};

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'I am so soo happy';
  } else if (joyFactor > 0){
    var note = 'I am happy';
  } else {
    var note = 'I am ehh';
  }
  return note;
}

// - - -

var day = 'Tuesday';
switch (day){
  case 'Monday':
    console.log('happy coffee');
    break;
  case 'Tuesday':
    console.log('how was that coffee');
    break;
  case 'Friday':
    console.log('I am in luf');
    break;
  default:
    console.log('this is day does not count');
}

// - - -

var myNameArray = ['Lichard', 'de', 'grey'];

for (var indx in myNameArray){
  console.log( myNameArray[indx] + '... is part of the name');
}

for (var indx = 0; indx < myNameArray.length; indx++){
  console.log( myNameArray[indx] + '... is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
  console.log( myNameArray[indx]  + '... is part of the name');
  console.log( nameItself + '... is part of the name');
})

 // - - -

var myObject = {name: 'lichard', age: 3, hobby: 'learning js'};
myObject['name'];
myObject.name;

// write  a function that changes a variable through scope

var name = 'bill'

function myName(){
  return name = 'ted';
}

// - - -

function showMeTheMoney(){
  var x = 5;
  function increment(){
    x = x + 1;
    }
  increment();
  console.log(x);
}
