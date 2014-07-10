def letter_count(string)
  hash = Hash.new(0)
  string.downcase.gsub(" ", "").chars
  letters.each do |letter|
    hash[letter] += 1
  end
  hash
end
