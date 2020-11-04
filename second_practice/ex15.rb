# filename = ARGV.first

# text = open(filename)

# puts "Here's your file #{filename}:"
# print text.read

# print "Type the filename again: "
# file_again = $stdin.gets.chomp

# text_again = open(file_again)

# print text_again.read

# ex15.txt

# ---

def open_file
    print "Enter the name of your file: "
    file_name = $stdin.gets.chomp
        if File.exists?(file_name)
            file = open(file_name)
            print file.read
            file.close
        else
            puts "No file found!"
            open_file()
        end
end

open_file()