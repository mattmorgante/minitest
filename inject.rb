# using_inject.rb
# Inject is really useful for a variety of problems

#summing numbers 
# inject sends 2 parameters through, result and element, then adds those two things 
a = [1, 2, 3, 4].inject { |result, element| result + element }
puts a
# each time the programs goes through the array, making result the previous answer and element the next number in the array 

# so to multiply everything just change the + to * 

b = [1, 2, 3, 4].inject { |result, element| result * element }
puts b

# test which word is longest 

longest = %w{ cat sheep bear }.inject do |memo, word| 
  memo.length > word.length ? memo : word 
end 
puts longest

# only the even integers of an array, as strings 

array = [1, 2, 3, 4, 5, 6].inject([]) do |result, element| 
  result << element.to_s if element % 2 == 0 
  result
end 
puts array 

