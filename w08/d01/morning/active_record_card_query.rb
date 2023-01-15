# method that produces a random straight (i.e. 5 cards in consecutive order):

def straight
  rnum = rand(2..12)
  rnum2 = rnum+5
  ord_cards = Card.order(:id)
  ord_cards.where(id: rnum..rnum2)
end
