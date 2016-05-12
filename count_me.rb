require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

raw_text = %{
  The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.
}

# Takes word_list from first method 
# Takes counts from second method, which is an array 

word_list = words_from_string(raw_text)
counts    = count_frequency(word_list)

# puts counts 

# Then it sorts which count is the highest 
# Runs the sort_by method, passing through words and counts and then sorting by count 
sorted    = counts.sort_by { |word, count| count}

# top_five it takes the last five out of the hash
top_five  = sorted.last(5)
# puts top_five 

# Finally it organizes top_five, putting out the 0th and 1st elements (word and then count)
for i in 0...5 
  word = top_five[i][0]
  count = top_five [i][1]
  puts "#{word}: #{count}"
end 