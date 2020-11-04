print "How old are you (years)?"
# When retrieving user input, make sure to assign to a variable
# gets retrieves input, chomp removes \n new line
=begin
without chomp => 
    age = integer\n
with chomp => 
    age = integer
=end
age = gets.chomp
print "How tall are you (inches)?"
height = gets.chomp
print "How much do you weigh (lbs)?"
weight = gets.chomp

puts "So you're #{age} years old, #{height} inches tall, and #{weight} pounds?"

=begin
    chomp => removes \n
    chop => removes last character (applies to regex... gets.chop removes 'n', leaving '"string"\') 
        Chain methods to remove last character (i.e. gets.chomp.chop)
    strip => removes blank/whitespace
=end