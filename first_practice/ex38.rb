ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

# while loop iterates 10 times (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
while stuff.length != 10
    # pop removes and assigns "Boy" to 'next_one' variable, 'more_stuff' = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl"]
    next_one = more_stuff.pop
    # "Adding Boy"
    puts "Adding: #{next_one}"
    # 'next_one' variable Boy then pushed to array stuff ("Apples", "Oranges", ... "Boy")
    stuff.push(next_one)
    # There are 7 items now
    puts "There are #{stuff.length} items now"
end

# ["Apples", "Oranges", "Crows", "Telephone", "Light", "Sugar", "Boy", "Girl", "Banana", "Corn"]

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

# Oranges
puts stuff[1]
# Corn | Answer: iterates backwards in the array to the item "preceding" it
puts stuff [-1]
# array minus "Corn"
puts stuff.pop()
# Removes Corn
puts stuff.join(' ')
# Telephone#Light#Sugar | Answer: Join separator only placed between array items
puts stuff[3..5].join("#")