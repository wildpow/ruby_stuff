
puts "Welcome to Shapes"
print "How big do you want your shape? "
shape_size = gets.chomp
print "Outside letter: "
outside_letter = gets.chomp
print "Inside letter: "
inside_letter = gets.chomp
puts "About to draw a shape #{shape_size} big"
puts "using #{outside_letter} for the edge"
puts "and #{inside_letter} for the inside"

height = shape_size.to_i
width = shape_size.to_i

1.upto(height) do |row|
  if row == 1
    puts outside_letter * width
  elsif row == height
    puts outside_letter * width
  else
    middle = inside_letter * (width - 2)
    puts "#{outside_letter}#{middle}#{outside_letter}"
  end
end
