# Variable declared with parameters defined
formatter = "%{first} %{second} %{third} %{fourth}"

# Each line outputs the variable with defined arguments
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}

# Output

# Guess: 1 2 3 4 | Answer: 
# Guess: one two three four | Answer: 
# Guess: true false true false | Answer: 
# Guess: ??? | Answer: %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth}
# Even though Line 8 delcares paramters, a string is still declared and the string is populated when the formatter variable is declared without arguments.

# Guess: 
# I had this thing.
# That you could type up right.
# But it didn't sing.
# So I said goodnight
# Answer: I had this thing. That you could type up right. But it didn't sing. So I said goodnight.
# Even though the formatter arguments on Line 11-14 are on multiple lines, puts is only called on line 10 and only outputs to 1 line