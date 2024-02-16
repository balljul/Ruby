# frozen_string_literal: false

my_words = ['Julius', 'julius', 'Julius', 'julius', 'Julius', 'julius', 'Julius', 'julius', 'mama',  'mama', 'mama', 'papa', 'papa', 'papa']

def substrings(word_list, *search_words)
  result = word_list.reduce(Hash.new(0)) do |found_words, word|
    found_words[word] += 1 if search_words.include?(word)
    found_words
  end
end

result = substrings(my_words, 'Julius', 'Mama')
puts result
