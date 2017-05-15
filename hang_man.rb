def get_rand_word
  return words = ['Apple','Tiffany', 'Cora', 'beets','Ruby'].sample
end

def display_guess(word = '_')
  puts "Guess '_' '_' '_' '_' '_' '_' "
end

def state_of_board
  puts"    ______________  "
  puts"    |            |  "
  puts"    |           ( ) "
  puts"    |            |  "
  puts"    |          -----"
  puts"    |            |  "
  puts"    |           / \\"
  puts"    |               "
  puts"    |               "
  puts"--------------------"
  puts
end
state_of_board
display_guess

p get_rand_word
