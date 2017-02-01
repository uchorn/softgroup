=begin
2. You have sorted array of numbers ( e.g. [1,4,5,7,8,10,20] ) Please implement
a method which will search element in that array and return its index. ( e.g. el =
7, print index => 3 ). Think about the most optimal solution.
=end

array = [1,4,5,7,8,10,20]
x = 7

puts array.index(x)

# Version 2

i = 0

while x != array[i]
	
	i += 1

end

puts i