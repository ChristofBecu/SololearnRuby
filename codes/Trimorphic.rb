def cube(x)
  x ** 3
end

def trimorphic?(x)
  cube(x).to_s.end_with?(x.to_s)
end

0.upto(100000) do |x|
  if trimorphic?(x)
    print "#{x} ** 3 = #{cube(x)}\n"
  end
end
