//////// SCOPE

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;
  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0;
  }
  makeFoolOfSelf()
}

var selfEsteem = 10;
dance()
console.log('How good are you feeling?', selfEsteem)

//////// CLOSURE

function addFunctionBuilder(numToAdd){
  var message = 'where am i?';
  return function(number){
    console.log(message);
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2)

// - -

function bankTransaction(){
  function verifySSNumber(){
    // super secret stuff
  }
  return function(cash){
    if (verifySSNumber()){
      balance = balance + cash;
    }
  };
}

//////// CALLBACK

function cheer(){
  console.log('Hooray!')
}

function doWorkNow(doAfter){

  // do a bunch of stuff like fold a paper airplane
    // deomonstrate here via loop
    for (var 1 = 0; i < 10000; i++) {
      console.log(i);
    };
  doAfter();
}

doWorkNow(cheer)

//////// TIMEOUT

setTimeout(function(){console.log('you are great')}, 10000)


var person = {
    name: 'Gark',
    sing: function(){
      console.log (this.name + 'IM CALLIN YOU TO dinner');
    },
    grab: function(){
      console.log (this.sing + 'grab some dinner');
    }
}
