def outcome(player1, player2, str1, str2)
  case player1
  when 'rock' then puts "#{str1} #{player1} brakes #{str2} #{player2}!"
  when 'paper' then puts "#{str1} #{player1} covers #{str2} #{player2}!"
  else puts "#{str1} #{player1} cuts through #{str2} #{player2}!"
  end
end

def valid_input?(input)
  input == 'rock' || input == 'paper' || input == 'scissors'
end

def player_play
  puts "Lets play Roshambo? Pick rock, scissors, or paper"
  play = gets.chomp.downcase
end

def play_again?
  answer = gets.chomp.downcase
  if answer == 'y'
    player_play
  else
    puts "Good bye and thanks you playing"
  end
end

loop do
  play = player_play
  puts puts

  if valid_input?(play)
    puts "Good old #{play} nothing beats #{play}!"
    1.upto(3) { |n| puts n}
    comp_play = ['rock', 'scissors', 'paper'].sample
    puts "Computer throws #{comp_play}"
    puts
    if play == comp_play
      puts "It's a tie! We both choose #{play}.."
    elsif (play == 'rock' && comp_play == 'scissors') || (play == 'paper' && comp_play == 'rock') || (play == 'scissors' && comp_play == 'paper')
      puts "YOU WIN!!!"
      outcome(play, comp_play, 'Your', 'my')
      break
    else
      puts 'YOU LOOSE!!!!'
      outcome(comp_play, play, 'My','your')
      break
    end
  else
    puts "Please enter ether 'rock', 'paper', or 'scissors'"
  end
end
