#!/usr/bin/ruby

def findGarlandDegree(word)
	degree = 0
	(word.size-2).downto(0) do |x|
		if word.end_with?(word[0..x])
			degree = x+1
			break
		end
	end
	degree
end

def isGarlandWord?(word)
	degree = findGarlandDegree(word.downcase)
	degree > 0 ? degree : false
end

# test cases

words = ["Abracadabra", "alfalfa", "onion", "lol", "garland", "Zz", "A", "oniononiononion"]
	
words.each do |x|
	puts "#{x} = #{isGarlandWord?(x)}"
end


