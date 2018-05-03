def pan?(number)
  (0..9).each do |x|
    if !number.to_s.include?(x.to_s) 
      return false 
    end
  end
  return true
end

def setHash
  hash = Hash.new
  (0..9).each do |x|
    hash[x] = 0
  end
  hash
end

def countDigits(number)
  numbers = setHash
  arr = number.to_s.split('')
  arr.each do |x|
    numbers[x.to_i] += 1
  end
  numbers
end

def printPan(n)
print n
print " is pandigital? "
puts pan?(n)
puts countDigits(n)
puts
end


n = [112345678926780, 1564897, 11223344556677889900]
n.each do |x|
printPan(x)
end
