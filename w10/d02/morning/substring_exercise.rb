def find_substring(string, substring)
  if string.include?(substring)
    i = 0
    while ( i < string.length ) do
      return i if string.slice(i..i+substring.length-1) == substring
      i += 1
    end
  end
  false
end

def find_substring_2(string, substring)
  0.upto(string.length - substring.length) do |i|
   return i if substring == string[i..i+substring.length-1]
  end
  false
end

def find_substring_3(string, substring)
  string =~ (/substring/) || false
end

def find_substring_4(string, substring)
  string.match(substring) ? string.match(substring).begin(0) : false
end

