
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
print "How many triangles do you want?"
number_of_triangles = gets.chomp.to_i

def rectangle(height, width, outside_letter, inside_letter)
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
end

def triangle(height, outside_letter, inside_letter, num_tri=1)
  num_tri.times do
    1.upto(height) do |row|
      print ' ' * (height - row)
      if row == 1
        puts "#{outside_letter * 2}"
      elsif row == height
        puts outside_letter * height * 2
      else
        middle = inside_letter * (row - 2)
        print "#{outside_letter}#{middle}#{inside_letter}"
        puts "#{inside_letter}#{middle}#{outside_letter}"
      end
    end
  end
end

def flipped_triangle(height, outside_letter, inside_letter)
  height.downto(1) do |row|
    print ' ' * (height - row)
    if row == 1
      puts "#{outside_letter * 2}"
    elsif row == height
      puts outside_letter * height * 2
    else
      middle = inside_letter * (row - 2)
      print "#{outside_letter}#{middle}#{inside_letter}"
      puts "#{inside_letter}#{middle}#{outside_letter}"
    end
  end
end

triangle(height, outside_letter, inside_letter,number_of_triangles)
rectangle(height, width * 2, outside_letter, inside_letter)
flipped_triangle(height, outside_letter, inside_letter)
