# here's some new strange stuff, remember type it exactly

# Variables declared
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
# RegExp? | Newline expression

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

puts %q{
There's something going on here.
With the weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6
}

# Output
# Here are the days: Mon Tue Wed Thu Fri Sat Sun
# Guess: Here are the months: Jan Feb Mar Apr May Jun Jul Aug
# Answer: Here are the months: Jan
# Feb
# Mar
# Apr
# May
# Jun
# Jul
# Aug

# \n Newline expression
# %q Alternate newline syntax (without interpolation/ignore string literals)