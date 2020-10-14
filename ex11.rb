print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

# gets method obtains user input as a string (?)
# chomp method removes newline (Uncertain if newline after each var, or due to "puts").

# Answer: newline occurs at the end of each variable as a result of the gets method. chomp removes the newline from the value returned to the variable

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."