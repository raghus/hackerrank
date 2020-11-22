# https://www.hackerrank.com/challenges/mini-max-sum/problem
# Easy

def mini_max_sum(arr)
  max_loc = arr.index(arr.max) # Get the location of the largest value
  min_loc = arr.index(arr.min) # Get the location of the largest value
  min_arr = arr.dup # make a copy
  min_arr[max_loc] = 0 # in the copy set the max value to 0
  max_arr = arr.dup # make a copy
  max_arr[min_loc] = 0 # in the copy set the min value to 0
  print "#{min_arr.sum} #{max_arr.sum}\n" # print the sums
end
