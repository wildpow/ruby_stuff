def get_rand_word
  return words = ['Apple','Tiffany', 'Cora', 'beets','Ruby'].sample
end

def display_guess(board)
  puts "Guess #{board[0]} #{board[1]} #{board[2]} #{board[3]} '_' '_' "
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
