def palindrome?(string)
  string.gsub!(" ", "")
  string.downcase!
  string == string.reverse
end

def palindrome2?(string)
  string.split("") == string.split("").reverse
end