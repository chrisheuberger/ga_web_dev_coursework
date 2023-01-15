function Person (name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function(){
    if (this.mood === 'happy')
    {
      console.log('Hi I am and Im happy');
      }
    else if (this.mood === 'unhappy')
    {
      console.log('Hi I am and Im unhappy');
      }
  }
}

p1 = new Person('jin', 13, 'unhappy')
p2 = new Person('bill', 13, 'unhappy')
p3 = new Person('fort', 13, 'unhappy')
p4 = new Person('brix', 13, 'unhappy')
p5 = new Person('sucker', 13, 'unhappy')

new_people_array = []

new_people_array.push(p1)
new_people_array.push(p2)
new_people_array.push(p3)
new_people_array.push(p4)
new_people_array.push(p5)

return new_people_array
