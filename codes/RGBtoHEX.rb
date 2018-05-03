# print rgb.map { |x| x < 0 || x > 255 ? 'error' : x.to_s(16) }.join(' ')
# this oneliner did the job but when values were < 16, the leading 0's were missing... so:

def ran
  rand(-50..300)
end

20.times do
  rgb = [ran, ran, ran]

  print rgb, " = "
  hex = ""
  
  if rgb.max > 255 || rgb.min < 0 
    hex << 'error' 
  else
    hex << "#" 
    rgb.map do |x|    
      if x < 16
        hex << "0"
      end
      hex << x.to_s(16).upcase
    end
  end
puts hex
end
