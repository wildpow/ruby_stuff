actions = ['rock', 'scissors', 'paper']

puts "Lets play Roshambo? Pick rock, scissors, or paper"
shoot = gets.chomp
1.upto(3) { |n| puts n}
com_shoot = actions.sample
puts "Computer throws #{com_shoot}"


if shoot == com_shoot
  puts "It's a tie! We both choose #{shoot}.."
elsif (shoot == 'rock' && com_shoot == 'scissors') || (shoot == 'paper' && com_shoot == 'rock') || (shoot == 'scissors' && com_shoot == 'paper')
  puts "YOU WIN!!!"
  case shoot
  when 'rock'
    puts "Your #{shoot} brakes my #{com_shoot}!"
  when 'paper'
    puts "Your #{shoot} covers my #{com_shoot}!"
  else
    puts "Your #{shoot} cuts through my #{com_shoot}!"
  end
else
  puts 'YOU LOOSE!!!!'
  case com_shoot
  when 'rock'
    puts "My #{shoot} brakes your #{com_shoot}!"
  when 'paper'
    puts "My #{shoot} covers your #{com_shoot}!"
  else
    puts "My #{shoot} cuts through your #{com_shoot}!"
  end

end
