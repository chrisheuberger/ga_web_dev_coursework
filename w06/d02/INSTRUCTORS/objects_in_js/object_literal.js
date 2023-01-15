

var lich = {
  name: 'lichard',
  age: 3,
  jump: function(){
    console.log('I am Jump Jump Jump Jump ing')
  },
  sing: function(){
    console.log('La la la la LALALALA')
  }
};

lich.name
lich['name']

lich.sing()
lich['sing']()







var myBird = {
  name: 'Tweety',
  chirp: function(){
    console.log('tweet tweet tweet');
  },
  fly: function(){
    console.log('I am like a bird.  I want to fly away.  I dont know where myh home is. I dont know where my soul is.')
  }
};

myBird.fly();
myBird['fly']();



var person = {
  name: 'Roe',
  sing: function(){
    console.log('I am like a bird I want to fly away');
  },
  introduce: function(){
    console.log (this.name + ' is pleased to meet you');
  }
}

person.introduce();

