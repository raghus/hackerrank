# https://www.hackerrank.com/challenges/kangaroo/problem
# Easy

def kangaroo(x1, v1, x2, v2)
  # if they move with the same speed then never the twain shall meet
  # assuming x1 and x2 are also not the same here!
  return 'NO' if v1 == v2 

  # default rendezvous to NO, jumps to 0 
  rendezvous = 'NO'
  jumps = 0

  # locations of each kangaroo and the most recent prior gap between the two
  loc1 = x1
  loc2 = x2
  previous_gap = (loc1-loc2).abs

  # start an infinite loop that we'll break out of
  while true
    jumps += 1
    # new location = original location + (number of jumps * distance per jump)
    loc1 = x1 + jumps*v1 
    loc2 = x2 + jumps*v2
    current_gap = (loc1-loc2).abs
    if current_gap == 0 # they're now on the same spot. It's a YES
      rendezvous = 'YES'
      break # break out of any further iterations
    end
    if current_gap > previous_gap # the gap has widened so they'll never catch up
      rendezvous = 'NO'
      break # break out of any further iterations
    end
    # no break yet, keep going but update the previous gap for the next iteration
    previous_gap = current_gap
  end
  return rendezvous
end