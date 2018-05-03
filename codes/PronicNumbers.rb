# pronic numbers : n = x * (x + 1)
def pronicNumber?(n)
    x = (n**0.5).to_i
    x * (x+1) == n ? true : false
end

puts "all pronic numbers from 0 to 500, with pronic check:"
(0..500).each do  |x|
    if pronicNumber?(x) 
        print "#{x} "
    end
end

print "\n\na whole lot of pronic numbers, fast, in quite a different way ;)\n"
x = 0
y = 0

while x < 300000
    print "#{ x += y } "
    y += 2    
end
