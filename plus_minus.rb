# https://www.hackerrank.com/challenges/plus-minus/problem
# Easy

def plus-minus(arr)
  p = n = z = 0 # initalize positive, negative and zero to 0
  
  # iterate through the array incrementing 
  # p or n or z as appropriate 
  arr.each do |ele| 
      if ele > 0
          p += 1
      elsif ele < 0
          n += 1
      else
          z += 1
      end
  end

  # caculate the total t and the percentages
  t = p+n+z
  pp = (1.0*p/t).round(6)
  np = (1.0*n/t).round(6)
  zp = (1.0*z/t).round(6)

  # format as desired
  puts "#{pp}\n#{np}\n#{zp}"
end

