var currentTemp = 78;

function conditionAir(desiredTemp){
  if (desiredTemp > currentTemp){
    var display = 'Turn on the A/C please';
  } else if (desiredTemp < currentTemp){
    var display = 'Turn off the A/C please';
  } else {
    var display = 'just right';
  }
  return display;
}

console.log(conditionAir(88))
