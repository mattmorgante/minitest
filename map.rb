arr = [1,2,3,4,5]
brr = arr.map { |x| -x }

puts arr
puts brr

# MAP and all other Enumberable methods are based off of each 
# INvokes a collection and acts upon each element in the collection. Then it returns the transformed collection without altering the original one 

# convention follows original.map 
# or you can use map! to modify the originaly array 
crr = [1,2,3,4,5]
crr.map! {|a| a - (a-1)}
puts crr.join(',')

a = 100.times.map{ |x| x }.reverse
puts a.join(',')