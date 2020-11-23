# https://www.hackerrank.com/challenges/diagonal-difference/problem
# Easy

def diagonal_difference(arr)
  size = arr.first.size # get the number of elements in each row/col
  d1,d2 = 0,0 # intiialize the sums of the diagonals
  (0..size-1).each do |i|
      d1 += arr[i][i] # left top to right bottom
      d2 += arr[size-1-i][i] # right top to left bottom
  end
  return (d1-d2).abs # desired output
end
