# array with states
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}
# array with cities
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}
# cities array now has 
# 'NY' => 'New York',
# 'OR' => 'Portland'

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# ----------

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbreviation is #{states['Florida']}"

puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# ??? For loop iterates through states array (how are arguments passed through? first then second?)
puts '-' * 10
states.each do |state, abbrev|
    puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
# iterates through array
states.each do |state, abbrev|
    # searches for OR in cities array (matching abbrev argument) then assigned to variable 'city'
    city = cities[abbrev]
    # string -> Oregon is abbreviated OR and has a city Portland
    puts "#{state} is abbreviated #{abbrev} and has a city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
    puts "Sorry, no Texas"
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city} "