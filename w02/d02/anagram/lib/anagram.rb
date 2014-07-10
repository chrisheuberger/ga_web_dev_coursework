def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def find_anagrams(base_word, word_arr)
  word_arr.select do |word|
    anagram?(base_word, word)
  end
end
