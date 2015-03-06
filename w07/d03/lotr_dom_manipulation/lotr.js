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

// 1 //

function makeMiddleEarth(lands){
  var landSection = $('<section>').addClass("middle-earth");
  for (var i = 0; i < lands.length; i++){
    var emptyArticle = $('<article>');
    var emptyHone = $('<h1>');
    emptyHone.html(lands[i]);
    emptyArticle.append(emptyHone);
    landSection.append(emptyArticle);
  }
  $('body').append(landSection);
}

makeMiddleEarth(lands);

// 2 //

function makeHobbits(hobbits){
  var newUl = $('<ul>');
  for (var i = 0; i < hobbits.length; i++){
    var emptyLi = $('<li>');
    var hobbitLi = emptyLi.html(hobbits[i]).addClass('hobbit');
    newUl.append(hobbitLi);
  }
  $('body').append(newUl);
}

makeHobbits(hobbits);

// 3 //

function keepItSecretKeepItSafe(){
  var ringDiv = $('<div>').addClass('the-ring');
  var frodo = $('li:contains(Frodo Baggins)');
  frodo.append(ringDiv);
}

keepItSecretKeepItSafe();

// 4 //

function makeBaddies(baddies){
  var emptyUl = $('<ul>');
  for (var i = 0; i < baddies.length; i++){
    var emptyLi = $('<li>');
    var baddieLi = emptyLi.html(baddies[i]);
    emptyUl.append(baddieLi);
  }
  $('body').append(emptyUl);
}

makeBaddies(baddies);

// 5 //

function makeBuddies(buddies){
  var newAside = $('<aside>');
  var newUl = $('<ul>');
  for (var i = 0; i < buddies.length; i++){
    var newLi = $('<li>');
    newLi.html(buddies[i]);
    newUl.append(newLi);
  }
  newAside.append(newUl);
  $('body').append(newAside);
  var gandalf = $('li:contains(Gandalf the Grey)');
  gandalf.css('backgroundColor', 'lightgrey');
}

makeBuddies(buddies);

// 6 //

function leaveTheShire(){
  var rivendellArticle = $('article:contains(Rivendell)');
  var oldUl = $('ul:contains(Frodo Baggins)');
  var newUl = $('<ul>');
  var hobbitClan = $('.hobbit');
  for (var i = 0; i < hobbitClan.length; i++){
    newUl.append(hobbitClan[i]);
  }
  oldUl.remove();
  rivendellArticle.append(newUl);
}

leaveTheShire();

// 7 //

function BeautifulStranger(){
  $('li:contains(Strider)').html('Aragorn');
}

BeautifulStranger();

// 8 //

function forgeTheFellowship(){
  var rivendellArticle = $('article:contains(Rivendell)');
  var hobbitClan = $('ul:contains(Frodo Baggins)');
  var buddieClan = $('ul:contains(Gandalf the Grey)');
  var combinedClan = $.merge(hobbitClan.children(), buddieClan.children());
  $('aside').remove();
  var fellowshipDiv = $('<div>').addClass('the-fellowship');
  var fellowshipUl = $('<ul>');
  for (var i = 0; i < combinedClan.length; i++){
    fellowshipUl.append(combinedClan[i]);
  }
  hobbitClan.remove();
  fellowshipDiv.append(fellowshipUl);
  rivendellArticle.append(fellowshipDiv);
  alert('The Fellowship has been formed in Rivendell.');
}

// 9 //

forgeTheFellowship();

function theBalrog(){
  var gandalf = $('li:contains(Gandalf the Grey)');
  gandalf.html('Gandalf the White');
  gandalf.css('backgroundColor', 'White');
  gandalf.css('border', '1px solid grey');
}

theBalrog();

// 10 //

function hornOfGondor(){
  alert("Oh shit, the Horn of Gondor has been blown!");
  alert("...and Boromir was killed by the Uruk-hai!");
  var fellowship = $('.the-fellowship');
  var boromir = $('li:contains(Boromir)');
  boromir.css('textDecoration', 'line-through');
  var urukHai = $('li:contains(The Uruk-hai)');
  urukHai.remove();
  var footer = $('<footer>');
  footer.append(boromir);
  $('body').append(footer);
}

hornOfGondor();

// 11 //

function itsDangerousToGoAlone(){
  var frodo = $('li:contains(Frodo Baggins)');
  var sam = $('li:contains(Samwise)');
  var emptyUl = $('<ul>');
  var mordor = $('article:contains(Mordor)');
  emptyUl.append(sam);
  emptyUl.append(frodo);
  mordor.append(emptyUl);
  var mtDoom = $('<div>').addClass('mount-doom');
  mordor.append(mtDoom);
}

itsDangerousToGoAlone();

// 12 //

function weWantsIt(){
  var gollumDiv = $('<div>');
  gollumDiv.addClass('gollum');
  var mordor = $('article:contains(Mordor)');
  var ring = $('.the-ring');
  mordor.append(gollumDiv);
  gollumDiv.append(ring);
}

weWantsIt();

// 13 //

function thereAndBackAgain(){
  var gollum = $('.gollum');
  var ring = $('.the-ring');
  gollum.remove();
  ring.remove();
  var allHobbits = $('.hobbit');
  var theShire = $('article:contains(The Shire)');
  for (var i = 0; i < allHobbits.length; i++){
    theShire.append(allHobbits[i]);
  }
}

thereAndBackAgain();
