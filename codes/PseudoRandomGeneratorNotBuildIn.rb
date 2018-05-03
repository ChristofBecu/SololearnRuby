def generateRandom
  (Time.now.nsec/1000) % 2
  
end

def randomArray(length)
  array = Array.new
  length.times do |x|
    array << generateRandom
    sleep(0.0008)           # pauze necessary for getting new nsec
  end
  array
end

def countCoins(array)
  hash = { 'heads' => 0, 'tails' => 0 }
  (0..array.size-1).each do |x|
    array[x] == 0 ? hash['heads'] += 1 : hash['tails'] += 1
  end
  hash
end

puts '5000 coin tosses yields:'
puts countCoins(randomArray(5000))

