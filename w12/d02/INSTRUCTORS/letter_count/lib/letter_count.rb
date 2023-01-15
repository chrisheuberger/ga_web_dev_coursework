#def letter_count(string)
#end


def letter_count(string)
  hash = Hash.new(0)
  letters = string.downcase.gsub(" ", "").chars
  letters.each do |letter|
    hash[letter] += 1
  end
  hash
end

# def letter_count(string)
#   hash = {}
#   letters = string.downcase.gsub(" ", "").chars
#   letters.each do |letter|
#     # hash[letter] = letters.count(letter)
#     hash.store(letter, letters.count(letter))
#   end
#   hash
# end

# def letter_count(string)
#   hash = {}
#   string = string.downcase.gsub(" ", "")
#   string.each_char do |letter|
#     hash.store(letter, string.count(letter))
#   end
#   hash
# end

def letter_count(string)
  letters = string.downcase.gsub(" ","").chars
  letters.uniq.each_with_object({}) { |letter, hash| hash[letter] = letters.count(letter) }
end






