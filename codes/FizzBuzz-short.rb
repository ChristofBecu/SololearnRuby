#62 characters
100.times {|i| p i%3 == 0 ? i%5 == 0 ? 'FizzBuzz' : 'Fizz' : i%5==0 ? 'Buzz' : i} 

#70 characters
#f= 'FizzBuzz'
#100.times {|i| p i%3 && i%5 == 0 ? f : i%3 == 0 ? f[0,3] : i%5 == 0 ? f[4,7] : i }

#77 characters
#(0..100).each {|i| puts i%3 == 0 && i%5 == 0 ? "FizzBuzz" : i%3 == 0 ? "Fizz" : i%5 == 0 ? "Buzz" : i }

#91 characters
#def a(n, i)
#  n%i==0
#end
#
#f= 'FizzBuzz'
#100.times {|i| p a(i, 3) && a(i, 5) ? f : a(i, 3) ? f[0,3] : a(i, 5) ? f[4,7] : i }
