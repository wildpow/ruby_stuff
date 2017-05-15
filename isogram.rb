# An isogram is a word that has no repeating
# letters, consecutive or non-consecutive.
# Implement a function that determines
# whether a string that contains only
# letters is an isogram. Assume the empty
#  string is an isogram. Ignore letter case.

def is_isogram(string)
  string.downcase.split(//).uniq! == nil ? true : false
end





p is_isogram("Dermatoglyphics")
p is_isogram("isogram")
p is_isogram("aba")
p is_isogram("moOse")
p is_isogram("isIsogram")
p is_isogram("")
