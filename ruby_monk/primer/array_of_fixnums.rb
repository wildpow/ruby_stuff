# Given an array, return true if all the
# elements are Fixnums

def array_of_fixnums?(array)
  array.all? do |i|
    i.class == Fixnum
    end
end

p array_of_fixnums([1,2,3])
p array_of_fixnums(['a',1,:b])

####### OR ##########

def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end
