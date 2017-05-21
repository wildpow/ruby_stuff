h1 = "H       H"
h2 = h1
h3 = h1
h4 ="HHHHHHHHH"
h5 = h1
h6 = h1
h7 = h1
h = [h1,h2,h3,h4,h5,h6,h7]

e1 = "EEEEEEEEE"
e2 = "E        "
e3 = e2
e4 = e1
e5 = e2
e6 = e2
e7 = e1
e = [e1,e2,e3,e4,e5,e6,e7]

l1 = "L        "
l7 = "LLLLLLLLL"
l = [l1,l1,l1,l1,l1,l1,l7]

o1 = "   OOO   "
o2 = "  O   O  "
o3 = " O     O "
o4 = o3
o5 = o3
o6 = o2
o7 = o1
o = [o1,o2,o3,o4,o5,o6,o7]
spaces = "    "
0.upto(6) do |count|
  puts "#{h[count]}#{spaces}#{e[count]}#{spaces}#{l[count]}#{spaces}#{l[count]}#{spaces}#{o[count]}"
end
