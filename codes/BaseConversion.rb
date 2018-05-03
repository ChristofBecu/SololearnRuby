rows = 100
columns = 2
numbers = Array.new(rows){Array.new(columns)}

0.upto(rows-1) do |x|
  numbers[x][0] = rand(1000)
  numbers[x][1] = rand(35)+2 # limits to_s base conversion : 2 to 36
end

numbers.sort_by!(&:first)
numbers.sort_by!(&:last)

numbers.each do |x, y|
  print "#{x} to base #{y} = #{x.to_s(y)}\n"
end
