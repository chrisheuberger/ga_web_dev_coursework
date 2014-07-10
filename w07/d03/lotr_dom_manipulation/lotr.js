var hobbits = [
"Frodo Baggins",
"Samwise 'Sam' Gamgee",
"Meriadoc \"Merry\" Brandybuck",
"Peregrin 'Pippin' Took"
];

var buddies = [
"Gandalf the Grey",
"Legolas",
"Gimli",
"Strider",
"Boromir"
];

var baddies = [
"Sauron",
"Saruman",
"The Uruk-hai",
"Orcs"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

// 1
function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    var section = $('<section>', {id: 'middle-earth'});
    $(section).appendTo('body');
    // add each land as an article tag
    var manyLands = function(){
      $.each(lands, function(index, value) {
        var land = $('<article>');
        var showLand = $(section).append(land);
        $(land).append($('<h1>').html(value));
      });
    };
    // inside each article tag include an h1 with the name of the land
    $('article').html('<h1>' + manyLands() + '</h1>');
}

$(document).ready(function() {
  makeMiddleEarth(lands);
});

// 2
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var list = $('article').eq(0).after('<ul>');
  var manyHobbits = function(){
    $.each(hobbits, function(index, value){
      var hobbit = $('<li>');
      var showHobbit = $(list).append(hobbit);
      $(hobbit).html(value);
      $(hobbit).addClass('hobbit');
      // $('<li>', {text: value}).appendTo(list);
      // $('li').addClass('hobbit');
    });
  };
  // give each hobbit a class of hobbit
};

$(document).ready(function() {
  makeHobbits(hobbits);
});

// 3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}

// 4
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
}

// 5
function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}

// 6
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}

// 7
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}

// 8
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

// 9
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

// 10
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

//11
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

// 12
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

// 13
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
