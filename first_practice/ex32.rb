the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']


# for (let i = 0, i < the_count.length, i++) {
#     console.log(`This is count ${the_count[i]}`)
# }

# for i(?) in array [1,2,3,4,5]
for number in the_count
    puts "This is count #{number}"
end

# preferred Ruby loops

# For each iteam in fruits array, grab item and pass through loop parameter (i)
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

change.each {|i| puts "I got #{i}"}

# Create an empty array

elements = []

# range operator.each do
(0..5).each do |i|
    puts "adding #{i} to the list."
    elements.push(i)
end

# print out new array
elements.each {|i| puts "Element was #{i}" }