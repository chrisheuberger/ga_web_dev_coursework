def too_to_to(string)
  string.gsub!(/(\w)(\1+)/, '\1') #paranthesis around term \w means capture this; (\1+) means capture all successive instances of \w immediately after it
end
