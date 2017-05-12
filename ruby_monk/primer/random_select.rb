# Create a method 'random_select' which, when given an array of elements
# (array) and a number (n), returns n randomly selected elements
# from that array.

def random_select(array, n)
  index = array.length
  output = []
  n.times do
   output << array[rand(index)]
  end
  output
end

p random_select([1, 2, 3, 4, 5], 2)
p random_select([1, 2, 3, 4], 2)
p random_select([1, 2, 3], 2)
