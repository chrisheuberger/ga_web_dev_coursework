var runTrue = function () { console.log("Success!"); };
var runFalse = function () { console.log("Failure!"); };

function doIt(onSuccess, onFailure) {
  var success = Math.floor(Math.random() * 10);
  if (success) {
    onSuccess();
  } else {
    onFailure();
  }
}

doIt(runTrue, runFalse);


// MOAR COMPLICATED!

var onSuccess = "Success!";
var onFailure = "Failure!";
var callback = function callback(msg, time) {
  console.log(msg + " at " + time);
};

function doIt(onSuccess, onFailure, callback) {
  function performOperation(workToDoAfterDone) {
    setTimeout(workToDoAfterDone, 1000);
  }
  function theWorkIamDoing() {
    var success = Math.floor(Math.random() * 10);
    // A wild operator appears! Google "ternary operator"
    var message = success ? onSuccess : onFailure;
    callback(message, Date.now());
  }
  performOperation(theWorkIamDoing);
  console.log("Please be patient, this may take a few seconds");
}

doIt(onSuccess, onFailure, callback);
