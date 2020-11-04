puts "I wil now count my chickens:"

# String interpolation
puts "Hens #{25 + 30 / 6}"

# String interpolation
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7

# String interpolation
puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false."

puts "How about some more."

# String interpolation
puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"

=begin Output
I will now count my chickens:
Hens {int} (no remainder)
Roosters {int}
Now I will count the eggs:
{int}
Is it true that 3 + 2 < 5 - 7?
boolean
What is 3 + 2? {int}
What is 5 - 7? {int}
Oh, that's why it's false.
How about some more.
Is it greater? {boolean}
Is it greater or equal? {boolean}
Is it less or equal? {boolean}


=end