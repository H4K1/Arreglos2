array = [5, 3, 2, 5, 10]

array.each do |x|
    print "|" + "**" * x
    print "\n"
end


print ">" + "--" * array.max
print "\n"

for i in (1..array.max)
  print "#{i} " 
end


