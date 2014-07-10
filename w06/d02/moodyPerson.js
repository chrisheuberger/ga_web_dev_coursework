function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function(){
    if (this.mood > 5) {
      console.log('Hi, I am ' + this.name + ' I am excellent!');
    } else {
      console.log('I am '+ this.name + ' and I am just okay.');
    }
  }
}

var crowd = [
    var person1 = new Person('Gark', 16, 7),
    var person2 = new Person('Lad', 25, 5),
    var person3 = new Person('Tam', 60, 10),
    var person4 = new Person('Snaz', 10, 4),
    var person5 = new Person('Mohn', 24, 5)
];

person1.introduce()
person2.introduce()
person3.introduce()
person4.introduce()
person5.introduce()
