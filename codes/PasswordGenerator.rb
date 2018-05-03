def generatePW(length)
  array = Array.new
  ("0".."9").map do |letter| array << letter end
  ("a".."z").map do |letter| array << letter end
  ("A".."Z").map do |letter| array << letter end
  array.sample(length).join('')
end

print generatePW(gets.chomp.to_i)
