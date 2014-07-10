def palindrome?(string)
  string.gsub!(" ", "")
  string.downcase!
  string == string.reverse
end
