suits = ["clubs", "diamonds", "spades", "hearts"]
names = ['2', '3', '4', '5', '6', '7', '8', '9',
         '10', 'jack', 'queen', 'king', 'ace']

suits.each do |suit|
  names.each do |name|
    Card.create(suit: suit, name: name)
  end
end