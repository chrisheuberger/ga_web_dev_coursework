random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

plurals = random_animals.map {|x| x + "s"}
alpha = random_animals.sort
reverse_alpha = random_animals.sort.reverse
reverse_string = random_animals.map {|x| x.reverse}
word_length = random_animals.sort {|x| x.length}
reverse_word_length = random_animals.sort{|x,y| y.length <=> x.length}
last_char = random_animals.sort_by{|x| x[-1]}

# with .map -> returns new array
# with .each  —> returns original array
