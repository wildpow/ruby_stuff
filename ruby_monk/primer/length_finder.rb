# Given an array containing some strings, return an array
# containing the length of those strings.

def length_finder(input_array)
  return_array = []
  input_array.each do |item|
    return_array << item.length
  end
  return_array
end
p length_finder(['I','am','genius']) # => [1,2,6]
p length_finder(['things','are','','awesome']) # => [6,3,0,7]
