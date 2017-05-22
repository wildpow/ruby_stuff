
start = []

guesses = 0
def get_rand_word
  words = ['Apple','Tiffany', 'Cora', 'beets','Ruby'].sample
end

def hang(num, start)
  hang_man = ["|", "( )", "|", "--", "-", "--", "|", "/ ", "\\", "<>", "<>"]
  start << hang_man[num]
end


def display_board(arr)
  puts"    ______________  "
  puts"    |            #{arr[0]}  "
  puts"    |           #{arr[1]} "
  puts"    |            #{arr[2]}  "
  puts"    |          #{arr[3]}#{arr[4]}#{arr[5]}"
  puts"    |            #{arr[6]}  "
  puts"    |           #{arr[7]}#{arr[8]}"
  puts"    |          #{arr[9]} #{arr[10]}"
  puts"    |               "
  puts"--------------------"
  puts
end

display_board(start)
hang(0,start)
display_board(start)
hang(1,start)
display_board(start)
p get_rand_word
