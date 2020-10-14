# Define Variables

# set types_of_people var equal to 10
types_of_people = 10
# set x var equal to (string w/ variable)
x = "There are #{types_of_people} types of people."
# Set binary var and do_not var to (string)
binary = "binary"
do_not = "don't"
# set y var equal to (string w/ variable)
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# Output

# There are 10 types of people.
# Those who know binary and those who don't.

puts "I said: #{x}."
puts "I also said: '#{y}'."

# Output

# I said: There are 10 types of people. | Actual: I said: There are 10 types of people..
# I also said: 'Those who know binary and those who don't.'.

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

# Output

# Isn't that joke so funny?! false

w = "This is the left side of..."
e = "a string with a right side."

puts w + e
# w + e concatenates to create a longer string 

#Output

# This is the left side of...a string with a right side.