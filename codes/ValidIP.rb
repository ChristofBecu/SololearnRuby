#Is That an IP Address?

#Given a string as input, create a program to evaluate whether or not it is a #valid IPv4 address.

#A valid IP address should be in the form of: a.b.c.d where a, b, c and d are #integer values ranging from 0 to 255 inclusive.

#For example:
#127.0.0.1 - valid
#127.255.255.255 - valid
#257.0.0.1 - invalid
#255a.0.0.1 - invalid
#127.0.0.0.1 - invalid


def numeric?(string)
  !!Float(string) rescue false
end

def lengthValid?(ip)
  ip.size == 4 ? true : false
end

def numValid?(num)
  num.to_i >= 0 && num.to_i <= 255 ? true : false
end

def ipValid?(ip)
  #check if there are invalid characters in ip
  if !numeric?(ip.gsub('.',''))
    return false
  end  
  #check if ip has correct amount of numbers (4)
  ip = ip.split('.')
  if !lengthValid?(ip)
    return false
  end
  #check if numbers of ip are valid 0 <> 255
  ip.each do |num|    
    if !numValid?(num)
      return false
    end
  end
  #if all of above conditions passed
  return true
end
  
def checkIP(ip)
  print "#{ip} - "
  puts ipValid?(ip) ? 'valid' : 'invalid'
end
  
  
ip = ["0!0.0.01", "127.1.501.45", "127.0.0", "a.0.0.1", "127.0.0.0.1", "127.0.0.1", "255.255.255.-", "0.0.0.0", "-1.2.3.4", "255.255.255.0"]
ip.each do |x|
  print checkIP(x)
end
