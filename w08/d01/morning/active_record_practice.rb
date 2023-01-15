Card.find_by_sql("SELECT * FROM cards WHERE (name = 'ace')")
Card.where(name: 'ace')
Card.find_by_sql("SELECT * FROM cards WHERE (suit = 'spades')")
Card.where(suit: 'spades')

Card.find_by_sql("SELECT * FROM cards WHERE (name = 'jack')")
Card.where(name: 'jack')

Card.find_by_sql("SELECT * FROM cards WHERE (suit = 'hearts')")
Card.where(suit: 'hearts')

Card.find_by_sql("SELECT * FROM cards ORDER BY name ASC")
Card.order(:name)

# Write a method that produces a random flush (i.e. 5 cards of the same suit)

Card.find_by_sql("SELECT * FROM cards LIMIT 5")

def flush
  suit = ['hearts', 'spades', 'diamonds', 'clubs'].sample
  Card.where(suit: suit).sample(5)
end

# Bonus

# Write an Active Record query to find all Jacks and Queens
Card.where('name = ? OR name = ?', "jack", "queen")

# Write an Active Record query to find all cards between 3 and 7 inclusive.
Card.where(name: "3".."7")

# Write a method that produces a random straight (i.e 5 cards in consecutive order)
def straight
  names = []
  card_indexes = []

  suits = ['clubs', 'spades', 'hearts', 'diamonds']
  name = ['ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king']

  start_index = rand(0..8)

  5.times do |i|
    names << name[start_index + i]
  end

  names.each do |name|
    suit = suits.sample
    card_indexes << Card.where(name: name, suit: suit)[0].id
  end

  Card.find(card_indexes)
end
