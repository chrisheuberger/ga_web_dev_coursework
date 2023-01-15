


/////////////
// Scope Example
/////////////

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }

  makeFoolOfSelf()

}

  var selfEsteem = 10;
  dance()
  console.log('How good you feeling?: ', selfEsteem)


/////////////
// Closure Example
/////////////


function addFunctionBuilder(numToAdd){
  var message = 'Where am I?';
  return  function(number){
            console.log(message);
            return (number + numToAdd);
          };
}

var addTwo    = addFunctionBuilder(2);


// // After ^ makes sense thing about this:

// function bankTransaction(){

//   function verifySSNumber(){
//     // Super secret stuff!!!
//   }

//   return  function(cash){
//             if (verifySSNumber()){
//               balance = balance + cash;
//             }
//           };

// }


/////////////
// Callback Example
/////////////

function cheer(){
  console.log('Hooray!!!!')
}

function doWorkNow(doAfter){

  // Do A bunch of stuff(like fold a paper airplane)
            // Demonstrated here via a loop thing
            for (var i = 0; i < 100000; i++) {
              console.log(i);
            };

  doAfter();

}

doWorkNow(cheer)



/////////////
// Timeout Example
/////////////

setTimeout(function(){console.log('You are great')}, 10000)

