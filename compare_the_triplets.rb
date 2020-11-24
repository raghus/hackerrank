# https://www.hackerrank.com/challenges/compare-the-triplets/problem
# Easy

def compare_triplets(a, b)
  alice = bob = 0 # initialize the scores to zero
  a.each_with_index do |value,indx| # interate through/traverse a
    # just can't use  a ternary or a simple else here
    # because of the equal case
    if value > b[indx] 
        alice += 1
    elsif value < b[indx]
        bob += 1
    end
  end
  return [alice,bob] # return an array as requested
end