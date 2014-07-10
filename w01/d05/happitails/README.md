#HappiTails
- You are the manager at HappiTails animal shelter.
- You need to manage your shelter by storing and manipulating information about clients and animals.

###Specification:

#####Object Specs:
- Animal:
  - An animal should have a name.
  - An animal should have a species.
  - An animal can have multiple toys, but doesn't start with any.

- Client:
  - A client should have a name.
  - A client should have an age.
  - A client can have multiple pets (animals), but it doesn't start with any.
    - Pet names MUST be unique (What implications does this have for our choice of data structure?)
  - A client should be able to accept a pet
  - A client shoule be able to give away a pet

- Shelter:
  - A shelter should have a name
  - A shelter can have multiple animals, but it doesn't start with any.
    - Animal names MUST be unique
  - A shelter can have multiple clients, but it doesn't start with any.
    - Client names MUST be unique
  - A shelter should be able to display all of its clients.
  - A shelter should be able to display all of its animals.
  - A shelter should be able to give away an animal.
  - A shelter should be able to accept an animal
  - A shelter should be able to accept a client

---

##Part 1
- Make the tests pass

---

##Part 2
- In an `app.rb` file, create user prompts to facilitate
  - ...client adopting an animal. This means the client now has the animal and they should no longer be a part of the shelter.
  - ...client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.
