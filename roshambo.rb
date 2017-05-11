def outcome(player1, player2, str1, str2)
  case player1
  when 'rock' then puts "#{str1} #{player1} brakes #{str2} #{player2}!"
  when 'paper' then puts "#{str1} #{player1} covers #{str2} #{player2}!"
  else puts "#{str1} #{player1} cuts through #{str2} #{player2}!"
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
  outcome(play, comp_play, 'Your', 'my')
else
  puts 'YOU LOOSE!!!!'
  outcome(comp_play, play, 'My','your')
end
