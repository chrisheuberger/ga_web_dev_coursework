suits = ["clubs", "spades", "diamonds", "hearts"]

names = ['2', '3', '4', '5', '6', '7', '8', '9',
        '10', 'Jack', 'King', 'Queen', 'Ace', ]

suits.each do |suit|
  names.each do |name|
    Card.create(suit: suit, name: name, )
  end
end
