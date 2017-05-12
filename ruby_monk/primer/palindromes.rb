# Given a sentence, return true if the
# sentence is a palindrome.

def palindrome?(sentence)
  str = sentence.downcase.gsub(' ', '')
  str == str.reverse
end

puts palindrome?("Race fast safe car") # => true
puts palindrome?("Live not on Evil") # => true
puts palindrome?("Yreka Bakey") # => false
