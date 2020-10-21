# 2 file paths are entered as arguments
from_file, to_file = ARGV

# Interpolated string
puts "Copying from #{from_file} to #{to_file}"

# AUTHOR: "we could do these two on one line, how?"
# open method opens from_file and assigns to var 'in_file' 
in_file = open(from_file)
# 'indata' variable (?) set to in_file (opens the from_file) and read method reads the data in file
indata = in_file.read

# Interpolated string
puts "The input file is #{indata.length} bytes long"
# exist method checks for a to_file argument, is assigned to File class (object template)
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to contine, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close