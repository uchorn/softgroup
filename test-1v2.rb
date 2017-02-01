ary = rnd_ary

puts 'Array = ' + ary.to_s

print 'X = '

x = gets.to_i

i, aryx = sum_el x, ary

puts "Answer is #{i} elements: " + aryx.to_s

BEGIN {

def rnd_ary
	Array.new(rand(4..15)) { |e| e = rand(10) }	
end

def sum_el(x,ary)

	aryx = []
	s = 0
	i = 0

	ary.delete_if { |e| e >= x }

	ary.sort! { |a,b| b <=> a }

	while s < x
			s += ary[i]
			aryx << ary[i]
			i += 1
	end

	return i, aryx

end

}