require 'pry'

def create_room
  size = ["huge", "large", "big", "regular", "small", "tiny", "average", "medium", "muddy"].sample
  color = ["red", "blue", "green", "dark", "golden", "crystal"].sample
  room_type = ["cave", "treasure room", "rock cavern", "tomb", "guard room", "lair", "taco bell"].sample
  direction = ["north", "south", "east", "west"].sample

  "You are in a #{size} #{color} #{room_type}.
  There is an exit on the #{direction} wall."
end

def monster_generator
  disposition = ["evil", "cranky", "superficial", "crazy", "mean", "super pissed", "lazy"].sample
  monster_type1 = ["mac truck", "grimlin", "stuffed animal", "potato", "banana"].sample
  monster_type2 = ["furbie","unicorn","sonic the hedge hog", "batman", "beany baby"].sample

  "Oh no! A #{disposition} monster is in here with you!
  Looks like a cross between a #{monster_type1} and #{ monster_type2}!"
end

def has_monster?
  roll_dice(2, 6) >= 8
end

def roll_dice(number_of_dice, size_of_dice)
  total = 0
  1.upto(number_of_dice) do
    total = total + rand(size_of_dice) + 1
  end
  return total
end

def has_escaped?
  roll_dice(2, 6) >= 11
end

def monster_attack?
  roll_dice(2, 6) >= 9
end

def defeat_monster?
  roll_dice(2, 6) >= 4
end

def has_treasure?
  roll_dice(2, 6) >= 7
end

def treasure
  ["gold coins", "gems", "a magic wand", "an enchanted sword"].sample
end

number_of_rooms_explored  = 1
treasure_count            = 0
damage_points             = 6
escaped                   = false
monster                   = false
current_room              = create_room
current_monster           = monster_generator
mosters_defeated          = 0
room_searched             = false

puts "Your are trapped in the dungeon. Collect treasure and try to escape"
puts "before an evil monster gets you!"
puts "To play, type one of the command choices on each turn."
puts ""


while damage_points > 0 and not escaped do
  actions = ["m - move", "s - search", " q - quit game"]
  puts "Room number #{number_of_rooms_explored}"
  puts current_room

  if monster
    puts
    puts current_monster
    actions << "f - fight"
  end
  puts
  print "What do you do? (#{actions.join(', ')}): "
  player_action = gets.chomp
  if monster and monster_attack?
    damage_points -= 1
    puts
    puts "OUCH, the monster bit you!"
  end
  if player_action == "m"
    current_room = create_room
    number_of_rooms_explored += 1
    monster = has_monster?
    current_monster = monster_generator
    escaped = has_escaped?
    room_searched = false
  elsif player_action == "s"
    if room_searched == false
      if has_treasure?
        puts
        puts "You found #{treasure}!"
        treasure_count += 1
        room_searched = true
      else
        puts
        puts "You look, but don't find anything."
        room_searched = true
      end
    else
      puts
      puts "You look again in the same spots as monsters draw closer!"
    end
    if not monster
      monster = has_monster?
      current_monster = monster_generator
    end
  elsif player_action == "f"
    if monster
      if defeat_monster?
        mosters_defeated += 1
        monster = false
        puts
        puts "You defeated the scary monster!"
      else
        puts
        puts "You attack and MISS!!!"
      end
    else
      puts
      puts "You pretend your sword is a lightsaber and make the noises"
      puts "wwwwOOWWwww...WOOOOwwwwwwwOOOWwwww"
    end
  elsif player_action == "q"
    puts "You slowly slip into madness as your soul has a cup of tea"
    exit
  else
    puts
    puts "I don't know how to do that!"
  end
  puts ""
end
if damage_points > 0
  puts "You escaped!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} treasures."
  puts "and you killed #{mosters_defeated} monsters!"
else
  puts "OH NO! You didn't make it out!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "before meeting your doom."
end
