# User prompted with string
print "Give me a number: "
# 'number' variable is assigned a value from user input. chomp removes newline. to_i converts string to integer
number = gets.chomp.to_i

# integer from 'number' variable is multiplied by 100 and assinged to the variable 'bigger'
bigger = number * 100
# Outputs interpolated string
puts "A bigger number is #{bigger}."

# User prompted with another string
print "Give me another number: "
# A value from user input is assigned to the variable 'another' (chomp removes new line)
another = gets.chomp
# the 'number' variable is reassigned a new value from the 'another' variable and converted to an integer
number = another.to_i

# new integer from 'number' is divided by 100, then assigned to the 'smaller' variable
smaller = number / 100
# Outputs interpolated string
puts "A smaller number is #{smaller.to_f}."

# Input {}
# 20
# 500

# Output

# Give me a number: {20}
# A bigger number is 2000
# Give me another number: {112}
# A smaller number is 5

# integer from 'smaller' is rounded to nearest whole number since it's not a floating point number (?). Use to_f method?