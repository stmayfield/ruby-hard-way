# Assigned variables
name = 'Zed A. Shaw'
age = 35 #not a lie in 2009
height = 74 #inches
weight = 180 #lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

# Bonus vars:
height_cm = height * 2.54
weight_kg = weight / 2.205

# Output
puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

# Bonus Output
puts "He's #{height_cm.round(2)} centimeters tall."
puts "He's #{weight_kg.round(2)} kilograms heavy."


# Expected Output:

# Let's talk about Zed A. Shaw.
# He's 74 inches tall.
# He's 180 pounds heavy.
# Actaully that's not too heavy.
# He's got Blue eyes and Brown hair.
# His teeth are usually White depending on the coffee.

# If I add 35, 74, and 180 I get 289.