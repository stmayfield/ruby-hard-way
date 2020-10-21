
$numbers = []

# while loop iterates based on i = 0. 1 is added to i each loop, so loops evaluates to false when i = 6 (0, 1, 2, 3, 4, 5).length = 6

def numbers_loop(int)
    i = 0
    while i < int
        # inter-string "At the top i is 0"
        puts "At the top i is #{i}"
        # 0 is sent to the numbers array
        $numbers.push(i)
    
        # 1 is added to zero and replaces existing variable in i
        i += 1
        # "Numbers now: " [0]
        puts "Numbers now: ", $numbers
        # "At the bottom i is 1"
        puts "At the bottom i is #{i}"
    end
end

numbers_loop(3)

puts "The numbers: "

# for loop runs after while loop evaluates to false, iterates through the array
$numbers.each {|num| puts num}

