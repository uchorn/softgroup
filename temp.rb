# Used links :
# http://stackoverflow.com/questions/5009295/pushing-elements-onto-an-array-in-a-ruby-hash
# http://stackoverflow.com/questions/1341271/how-do-i-create-an-average-from-a-ruby-array
# http://stackoverflow.com/questions/10940976/averaging-values-embedded-in-ruby-hash

require 'csv'
# Parse CSV to Hash :
date_temp = CSV.read('temp.csv').to_h
# Create empty Hash include Array :
temp_array = Hash.new { |k, v| k[v] = [] }
# Convert date_temp Hash to month_temp_array :
date_temp.each { |date, temp| temp_array[date[3..4]] << temp.to_i }
# Average of temperature array :
avg_temp = temp_array.map { |k, v| [k, v.map.inject(:+).to_f / v.size] }
# Same simply method :
# avg_temp = temp_array.map { |k, v| [k, v.sum.to_f / v.size] }
# Outputs result :
avg_temp.each { |month, avg| puts "#{month}: #{avg}" }
