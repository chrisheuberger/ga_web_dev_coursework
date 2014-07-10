var a = {
  x: 6
};

function display(person) {
  console.log (a);
}

function age(person, display) {
  person.x += 1
  display(person);
}
