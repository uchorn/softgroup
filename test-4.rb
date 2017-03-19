=begin
4. Write code to sum all of the numbers between 1 and 100 (e.g. 1 + 2 + 3 + ....
+ 100)
=end

s = 0

(1..100).each do |i|
	s += i
	# print "#{i} #{s} "
end

 puts s