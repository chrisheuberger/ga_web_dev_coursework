random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]  # => ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

# random_animals.map{|x| x + "s"}.each{|animal| puts animal}
# random_animals.each{|animal| puts animal+"s"}

# Return an array of the animals sorted alphabetically
random_animals.sort                 # => ["camel", "chameleon", "kangaroo", "lobster", "porpoise", "wombat"]
random_animals.sort{|x,y| x <=> y}  # => ["camel", "chameleon", "kangaroo", "lobster", "porpoise", "wombat"]

# Return an array of the animals sorted reverse alphabetically
random_animals.sort{|x,y| y <=> x}  # => ["wombat", "porpoise", "lobster", "kangaroo", "chameleon", "camel"]

random_animals.sort.reverse  # => ["wombat", "porpoise", "lobster", "kangaroo", "chameleon", "camel"]

# Return an array of the animals with each individual string reversed

# INSTRUCTIVE BUT NOT SATISFACTORY.
# random_animals.each{|x| puts x.reverse}  # => ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.map{|x| x.reverse}  # => ["esioprop", "lemac", "retsbol", "ooragnak", "tabmow", "noelemahc"]


# Return an array of the animals sorted by word length (low to high)
random_animals.sort_by{|x| x.length}  # => ["camel", "wombat", "lobster", "porpoise", "kangaroo", "chameleon"]

random_animals.sort{|x,y| x.length <=> y.length}  # => ["camel", "wombat", "lobster", "porpoise", "kangaroo", "chameleon"]


random_animals.sort{|x,y| y.length <=> x.length}  # => ["chameleon", "kangaroo", "porpoise", "lobster", "wombat", "camel"]


# Return an array of the animals sorted alphabetically by the last character in the string

random_animals.sort{|x,y| x[-1] <=> y[y.length-1]}  # => ["porpoise", "camel", "chameleon", "kangaroo", "lobster", "wombat"]

random_animals.sort_by{|x| x[-1]}  # => ["porpoise", "camel", "chameleon", "kangaroo", "lobster", "wombat"]














