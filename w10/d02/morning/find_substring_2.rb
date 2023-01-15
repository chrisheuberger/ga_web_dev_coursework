def find_substring(string, substring)
  0.upto(string.length - substring.length) do |i|
    return i if substring == string[i..i+substring.length-1]
  end
  false
end

def find_substring2(string, substring)
  string =~ (/substring/) || false
end

def find_substring3(string, substring)
  string.match(substring) ? string.match(substring).begin(0) : false
end
