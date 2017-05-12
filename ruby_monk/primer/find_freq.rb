# Given a sentence containing multiple words,
# find the frequency of a given word in that sentence.

def find_frequency(sentence, word)
  arr = sentence.downcase.split
  return arr.count(word)
end
