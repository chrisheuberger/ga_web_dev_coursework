

###Many-To-Many with Join Model
- example of `has_many through`


```ruby

pepe = Dog.create({name: 'pepe'})

lich = DogWalker.create({name: 'Lichard Grey'})

walkin_to_stars = Walk.create({destination: 'The Stars'})

walkin_to_stars.dog = pepe
walkin_to_stars.dog_walker = lich

walkin_to_stars.save

```


---


```ruby

pepe = Dog.create({name: 'pepe'})
lich = DogWalker.create({name: 'Lichard Grey'})
walkin_to_stars = Walk.create({destination: 'The Stars', dog: pepe, dog_walker: lich })

```

---

