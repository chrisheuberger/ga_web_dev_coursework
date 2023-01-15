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

function play(string){
  console.log(string.split("").reverse().join(""));
}
play("hello i am a string")

function sub(string){
  console.log(string.replace("a", " ").replace("e", " ").replace("i", " ").replace("o", " ").replace("u", " "));
}
sub("hello i am a string")

function subthegreat(string){
  console.log(string.replace("the", "the great"));
}
subthegreat("I am the and powerful Oz")

function caps(string){
  console.log(string.toUpperCase());
}
caps("is this uppercase enough?")