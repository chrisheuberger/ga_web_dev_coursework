// scope example

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0
  }

  makeFoolOfSelf()
}

var selfEsteem = 10;
dance()
console.log('self Esteem:' + selfEsteem)

// closure example

function addFunctionBuilder(numToAdd){
  return function(number){
    return (number + numToAdd);
  };
}

var addTwo  = addFunctionBuilder(2)

// callback example

function cheer(){
  console.log('Hooray')
}

function doWorkNow(doAfter){
  // do stuff(like fold a paper airplane)
  // demonstrated her via a loop
  for (var i = 0; i < 1000000; i++) {
    console.log(i);
  }
  doAfter();
}

doWorkNow(cheer)

// timeout Example

setTimeout(function(){console.log('Uou are aresome')}, 100000)
setTimeout(function(){console.log('You are awesome')}, 4000000 )
