# Input: ex15.txt

# Receives first argument from command line (ex15.txt) and assigns it to a variable
filename = ARGV.first

# open method takes in received argument from command line (ex15.txt), then open file method is assigned to txt
txt = open(filename)

# Outputs interpolated string > Here's your file ex15.txt:
puts "Here's your file #{filename}:"
# Outputs the entire contents (obtained from read method) of argument from command line (ex15.txt), provided via the open method
print txt.read

# Outputs non-interpolated string
print "\nType the filename again: "
# Command line prompts user for input and assigns input to the variable 'file_again'
file_again = $stdin.gets.chomp

# open method takes in the received user input from command line prompt and assigns to the variable txt_again 
txt_again = open(file_again)

# Outputs the entire contents (obtained from read method) of specified user input, served via the open method assigned to txt_again
print txt_again.read