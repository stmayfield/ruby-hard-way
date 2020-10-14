user_name = ARGV.first # gets the first argument
prompt = '> '

# Interpolated string
puts "Hi #{user_name}."
# Non-interpolated string(?)
puts "I'd like to ask you a few questions"
# Interpolated string
puts "Do you like me #{user_name}? "
# outputs '> '
puts prompt
# 
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer fo you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""