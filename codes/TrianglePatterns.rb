# * * * * *
# * * * * *
# * * * * *
# * * * * *
# * * * * *
1.upto(5) { 
  1.upto(5) { 
    print "* "  
  } 
  puts 
} 
puts
 
# *
# * *
# * * *
# * * * *
# * * * * *
1.upto(5) { |x| 
  1.upto(x) {  
    print "* "  
  }
  puts 
} 
puts

# * * * * *
# * * * *
# * * *
# * *
# *
1.upto(5) { |x| 
  5.downto(x) { 
    print "* "  
  }
  puts 
}
puts

        # *
      # * *
    # * * *
  # * * * *
# * * * * *
z=1
1.upto(5) { |x| 
  4.downto(x) { 
    print "  " 
  }
  1.upto(z) { 
    print "* "
  }
  z+=1
  puts
}
puts


     # *
    # ***
   # *****
  # *******
 # *********
# ***********
min_stars = 0
p_height = 5
p_space = p_height-1

0.upto(p_height) { |x|
  p_space.downto(x) {
    print " "
  }
  0.upto(min_stars) {
    print "*"
  }
  min_stars += 2
  puts
}
puts

# * * * * * * *
  # * * * * *
    # * * *
      # *
max_stars = 7
p_space = max_stars/2
p_height = max_stars - p_space

p_height.downto(1) { |x|
  p_space.downto(x) {
    print "  "
  }
  1.upto(max_stars) {
    print "* "
  }
  max_stars -= 2
  puts
}
puts

# *
# * *
# * * *
# * * * *
# * * *
# * *
# *
size = 3
size.downto(-size) { |x|  
  size.downto(x.abs) {
    print "* "
  }
  puts
}
puts

      # *
    # * *
  # * * *
# * * * *
  # * * *
    # * *
      # *
size = 3
size.downto(-size) { |x|  
  1.upto(x.abs) {
    print "  "
  }
  size.downto(x.abs) {
    print "* "
  }
  puts
}
puts

    # *
   # * *
  # * * *
 # * * * *
# * * * * *
p_height = 5
1.upto(p_height) { |x|
  (p_height-1).downto(x) {
    print " "
  }
  1.upto(x) {
    print "* "
  }
  puts
}
puts

# * * * * *
 # * * * *
  # * * *
   # * *
    # *
p_height = 5
p_height.downto(1) { |x|
  (p_height-1).downto(x) {
    print " "
  }
  x.downto(1) {
    print "* "
  }
  puts
}
puts


         # *
        # * *
       # * * *
      # * * * *
     # * * * * *
    # *         *
   # * *       * *
  # * * *     * * *
 # * * * *   * * * *
# * * * * * * * * * *
p_height = 5
p_space = p_height-1
i = 1
#top pyramid
1.upto(p_height) { |x|
  1.upto(p_height) {print " "}
  p_space.downto(x) {print " "}
  1.upto(x) {print "* "}
  puts
}
0.upto(p_height-1) { |x|
  p_space.downto(x+1) { print " " }
   0.upto(x) { print "* " }
   #puts
   (p_height+p_height-2).downto(i) { print " " }
   0.upto(x) { print "* " }
   i += 2
   puts
 }
puts  
