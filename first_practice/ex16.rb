# Argument variable takes in a filename in the command line
filename = ARGV.first

# Outputs interpolated string
puts "We're going to erase #{filename}"
# Outputs non-interpolated string
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you want that, hit RETURN."

# Command line intface retrieves user input (with new line) and
$stdin.gets

# Outputs non-interpolated string
puts "Opening the file..."
# open method, which takes the filename and argument (?), is assigned to variable 'target'
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines"

# Outputs non-interpolated string
print "Line 1: "
# command line retrieves user input and assigns to var 'line 1'
line1= $stdin.gets.chomp
# Outputs non-interpolated string
print "Line 2: "
# command line retrieves user input and assigns to var 'line 2'
line2= $stdin.gets.chomp
# Outputs non-interpolated string
print "Line 3: "
# command line retrieves user input and assigns to var 'line 3'
line3= $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
# close method exits file defined in the 'target' variable
target.close