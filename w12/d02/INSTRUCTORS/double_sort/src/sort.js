function doubleSort(array){

  order = getOrder(array);
  sortedWords   = array
                  .sort()
                  .filter(function(elem){return !isNumber(elem)})
  sortedNumbers = array
                  .sort(function(x,y){ return parseInt(x) - parseInt(y) })
                  .filter(function(elem){return isNumber(elem)});

  for (var i = 0; i < order.length; i++) {
    if (order[i] === "number") order[i] = sortedNumbers.shift();
    if (order[i] === "other") order[i] = sortedWords.shift();
  }

  return order;
}

function getOrder(array){
  order = [];
  for (var i = 0; i < array.length; i++) {
    console.log(array[i]);
    isNumber(array[i]) ? order.push("number") : order.push("other")
  }
  return order;
}

function isNumber(string){
  if (string.match(/[\D]/)) return false;
  return true;
}
