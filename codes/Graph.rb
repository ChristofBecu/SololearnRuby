numbers = Array.new
max = 39

for x in (1..max)
    numbers << rand(0..max)
end
print numbers; puts; puts

y = 1
numbers.each do |x|
    if y < 10 then print " " end
    print y; print " "; print 180.chr # y axis
    x.times do |i|
        print 205.chr # graph
    end
  
    print " #{x}"
    puts
    y = y + 1
end

print "   "; (max+1).times do print 197.chr end # x axis
puts
print "   "
for i in (0..max/10)
    print i.to_s*10
end
puts
print "   "
for i in (0..max/10)
    for j in (0..9)
        print j
    end
end
