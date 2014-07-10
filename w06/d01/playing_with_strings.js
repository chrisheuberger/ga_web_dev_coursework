var string = 'Think globally, scope locally.'

var reverse = string.split("").reverse().join("");

var replace = string.replace(/[aeiou]/gi, '');

console.log(string)
console.log(reverse)
console.log(replace)

var string = 'Think about the way to scope the JavaScript locally.'
var replaceTheGreat = string.replace('the', 'the great');

console.log(replaceTheGreat)

var string = 'tis a capital idea'
var capitalize = string.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });

console.log(capitalize)
