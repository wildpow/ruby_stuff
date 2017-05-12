def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

# The list of parameters passed to an object is, in fact, available as a list.
# To do this, we use what is called the splat operator -
# which is just an asterisk (*).

# The splat operator is used to handle methods which have a variable parameter
# list. Let's use it to create an add method that can handle
# any number of parameters.

def add2(a_num, another_num, yet_another_num)
  a_num + another_num + yet_another_num
end

numbers_to_add = [1,2,3]
puts add2(*numbers_to_add)

# The splat operator works both ways - you can use it to convert arrays to
# parameter lists as easily as we just converted a parameter list to an array.

# I'll show you how we can splat an array of three numbers into a parameter
# list so that it works with one of the examples from earlier in this lesson
# that accepts exactly three parameters.
