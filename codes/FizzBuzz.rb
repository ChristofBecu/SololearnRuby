=begin
Can you code this challenge?

Title: Fizz Buzz
Difficulty: Beginner

Develop a program that prints the numbers from 1 to 100. For multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

Want more coding ideas? Get the app here: https://play.google.com/store/apps/details?id=com.alansa.ideabag2
=end

i=1
while i<=100
    if i%3 == 0 && i%5 == 0
        puts "FizzBuzz"
    elsif i%5 == 0
        puts "Buzz"
    elsif i%3 == 0
        puts "Fizz"
    else
        puts i
    end
    i += 1
end
