def palindrome?(string)
  string.gsub!(" ", "")
  string.downcase!
  string == string.reverse
end

def palindrome2(word)
  word.split("") == word.split("").reverse
end

def palindrome3(string)
  string.gsub!(" ", "")
  string.downcase == string.reverse
end

def palindrome4(word)
    word == word.reverse
end
