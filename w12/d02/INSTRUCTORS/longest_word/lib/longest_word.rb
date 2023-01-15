
# Matt's Solution
def longest_word(string)
  word_arr = string.split(/\W+/)
  word_arr.max_by { |word| word.length }
end

# Andrew's Solution
def longest_word(string)
  string.scan(/\w+/).max_by { |word| word.length }
end

# Nessas's Solution
def longest_word(string)
  word_arr = string.split(/\W+/)
  hash = {}
  word_arr.each do |word|
    hash[word.length] = word
  end
  key = hash.keys.max
  hash[key]
end


def longest_word(string)
  array = string.split(/\W+/)
  longest = ''
  while array.length > 1
    if longest.length < array[-1].length
      longest = array[-1]
      array.pop
    else
      array.pop
    end
  end
  longest
end










