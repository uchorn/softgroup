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