require 'date'

puts "using built in function"
(2018..2030).each {|x|
  puts Date.leap?(x) ? "#{x} is a leap year" : "#{x} is not a leap year"
}

puts "\nusing common formula"
def leap_year(year)
  (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
end

(2018..2030).each {|x|
  puts leap_year(x) ? "#{x} is a leap year" : "#{x} is not a leap year"
}

