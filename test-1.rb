=begin
1. If you are given an array of undetermined length with numbers in random
order. Please write a method to return the minimum # of elements that add
up to a number >= X (where X is an input to the method? (e.g. array = [1,4,3,2],
X = 6, answer is 2 elements: 4 + 3)
=end

ary = [1,4,3,2]
x = 6

aryx = []
s = 0
i = 0

arys = ary.sort { |x,y| y <=> x }

while s < x
		s += arys[i]
		aryx << arys[i]
		i += 1
end

puts "Array = " + ary.to_s
puts "Answer is #{i} elements: " + aryx.to_s