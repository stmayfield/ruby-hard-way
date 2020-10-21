puts "Mary had a little lamb."
puts "It's fleece was white as #{'snow'}."
puts "And everywhere that Mary went."
puts "." * 10 # What's that do?
# Guess: A string and a number cannot be multiplied, so ruby returns an undefined value
# Answer: In ECMAScript6, a string multiplied by a number returns NaN (Not a Number). In Ruby, multiplication can be used as an alternative to concatenation. Other arithmentic results in an error (usually undefined?).
# puts "." / 10


# Output

# Mary had a little lamb.
# It's fleece was white as snow. | String interpolation declared, but data is still a string (not assinged to a variable elsewhere)
# And everywhere that Mary went.
# undefined? | Answer: ..........

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# watch that print vs. puts on this line what's it do?
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12


#Output

# Guess: CheeseBurger
# print outputs data to first line without creating a new line, puts then adds to the current line and ends with a new line
# Actual: