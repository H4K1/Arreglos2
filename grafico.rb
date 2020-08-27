
data = [5, 3, 2, 5, 10]

print "|" 
def chart(arr)
  arr = arr.sort
  for i in 0..arr.first
    print "*" * 2
  end
  puts
  print "|"
  for i in 1..arr[-4]
    print "*" * 2
  end
  puts
  print "|"
  for i in 1..arr[-3]
    print "*" * 2
  end
  puts
  print "|"
  for i in 1..arr[-2]
    print "*" * 2
  end
  puts
  print "|"
  for i in 1..arr.last
    if i <= 9
    print "**" 
    else
      print "***" 
    end
  end
  puts
  print "-" * arr.last * 3
  puts
  for i in 0..arr.last
      print "#{i} " 
  end
end

chart(data)

