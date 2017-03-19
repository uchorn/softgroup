=begin
3. Write code to turn the string "Fizz::Buzz::Wizz" into an array
["Fizz::Buzz::Wizz", "Fizz::Buzz", "Fizz"]
=end

str = "Fizz::Buzz::Wizz"
ary = []

ary << str
ary << str.rpartition("::")[0]
ary << str.partition("::")[0]

puts ary.to_s



arys = str.split('::')

aryx = []

aryx << arys[0]+'::'+arys[1]+'::'+arys[2]
aryx << arys[0]+'::'+arys[1]
aryx << arys[0]

puts aryx.to_s