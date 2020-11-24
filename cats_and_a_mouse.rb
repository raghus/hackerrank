# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
# Easy

def cat_and-mouse(x, y, z)
  if (x-z).abs == (y-z).abs 
  # if both cats are equidistant from Jerry then he wins
      return 'Mouse C'
  end
  # return the closer cat as the winner
  return (x-z).abs < (y-z).abs ?  'Cat A' :  'Cat B'
end
