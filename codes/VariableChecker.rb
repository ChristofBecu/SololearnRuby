=begin Variable Checker [GAME]
https://www.sololearn.com/Discuss/1061008/variable-checker-game
Hey Developer's.... let's play a game..

Enter a variable name with spaces and special characters. The output should be represented by the following rules...

RULES..

1. variable names starting with a digit should show an error message.
2. spaces between variable name should be deleted and next word should start with uppercase. more than 1 space can be der
  eg.   input=my  input   output=myInput
3. each special character should be replaced by '_' sign.

So, lets give it a try...every language welcomed..
=end

def changeSpecialChar(str)
  str = str.split('')
  (0..str.size-1).each { |x|
    if str[x].match(/[^[:alnum:]]+\z/) #checks if non-alphanumeric
      str[x] = "_"
    end
  }
  str.join('')
end
  
def capitalizeVar(str)
  str = str.split(' ')
  str.each {|x| x.capitalize! }
  str[0].downcase!
  str.join('')
end

def changeToVar(str)
  if str[0].match(/[[:digit:]]+/) #checks if number
    "*starts with digit, illegal input*"
  else
    str = changeSpecialChar(capitalizeVar(str))
  end
end

def printAsVar(str)
  print "#{str} -> #{changeToVar(str)}"
end
 
#---------------------------------------------------------
 
str = ["var is something", "4var something", "var-4   som3*thing!"]

str.each {|x| puts printAsVar(x)}
