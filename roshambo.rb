def case_state(player1, player2, x, y)
  case player1
  when 'rock' then puts "#{x} #{player1} brakes #{y} #{player2}!"
  when 'paper' then puts "#{x} #{player1} covers #{y} #{player2}!"
  else puts "#{x} #{player1} cuts through #{y} #{player2}!"
  end
end

actions = ['rock', 'scissors', 'paper']

puts "Lets play Roshambo? Pick rock, scissors, or paper"
play = gets.chomp
1.upto(3) { |n| puts n}
comp_play = actions.sample
puts "Computer throws #{comp_play}"


if play == comp_play
  puts "It's a tie! We both choose #{play}.."
elsif (play == 'rock' && comp_play == 'scissors') || (play == 'paper' && comp_play == 'rock') || (play == 'scissors' && comp_play == 'paper')
  puts "YOU WIN!!!"
  case_state(play, comp_play, 'Your', 'my')
else
  puts 'YOU LOOSE!!!!'
  case_state(comp_play, play, 'My','your')
end
