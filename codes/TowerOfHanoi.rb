def hanoi(number, initial='A', final='C', temp='B') 
  if number == 1 
    puts "move disk 1 from #{initial} to #{final}" 
    return
  end
  hanoi(number-1, initial, temp, final)
  puts "move disk #{number} from #{initial} to #{final}"
  hanoi(number-1, temp, final, initial)
end

hanoi(gets.chomp.to_i)
