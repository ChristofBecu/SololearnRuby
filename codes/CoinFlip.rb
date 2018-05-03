=begin
my first ruby :)

Coin Flip Simulation
Write some code that simulates flipping a single coin however many times the user decides. The code should record the outcomes and count the number of tails and heads.
=end

heads = 0
tails = 0
toss = gets.to_i

for i in (1..toss)
  coin = rand(2)
   if coin == 1
      tails+=1
   else
      heads+=1
   end
end
 
puts "#{toss} coinflips yield #{tails} tails and #{heads} heads"
