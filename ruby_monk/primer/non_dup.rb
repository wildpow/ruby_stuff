# Given an Array, return the elements that
# are present exactly once in the array.

def non_duplicated_values(values)
  values.find_all do |e|
    if values.count(e) > 1
      values.delete(e)
    end
  end
  values
end


p non_dupicated_values([1,2,2,3,3,4,5])
p non_dupicated_values([1,2,2,3,4,4])

####### OR #######

def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end
