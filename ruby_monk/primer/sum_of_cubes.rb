def sum_of_cubs(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

p sum_of_cubs(1,3)
