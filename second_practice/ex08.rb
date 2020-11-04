# set variable to a string (arguments specified after '%')

formatter = "%{first} %{second} %{third} %{fourth}"

# displays the string in 'formatter' variable, arguments declared in {arg: var} passed to string
# var = "%{param}"
# var % {param: arg}
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
# var % "var_param_1 var_param_2 var_param_3 var_param_4"
# Argument defined is string, therefore string passed as argument
puts formatter % {first: formatter, second: formatter, third: formatter, fourth:formatter}

# 'puts' outputs result as one line (\n not defined, use %q{} ?) 
puts formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}

=begin Output
1 2 3 4
one two three four
true false true false
%{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth}
I had this thing. That you could type up right. But it didn't sing. So I said goodnight.
=end