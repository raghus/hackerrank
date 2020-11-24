# https://www.hackerrank.com/challenges/minimum-distances/problem
# Easy

def minimum_distances(a)

  frequencies = {} # set up a hash to count frequencies of each digit
  a.each do |elem|
    frequencies[elem].nil? ? frequencies[elem] = 1 : frequencies[elem] += 1
  end

  # we only care about collecting those digits that occur twice
  # ie whose frequency == 2 ie the keys for which the hash has a value of 2
  duplicate_digits =[]
  frequencies.each do |k,v|
      if v == 2
        # stuff the key into an array of duplicate digits
        duplicate_digits << k 
      end
  end

  # if the original array had no dupes the hash would have 
  # no keys whose value is 2 and duplicate_digits array would be 
  # empty. in such cases return -1 as specified in the problem
  return -1 if duplicate_digits.size == 0

  # now we need to find the locations of the numbers in the 
  # original array 
  distances = [] # array to store the distances of the dupe digits
  duplicate_digits.each do |dupe_val|
      locations = [] # array to store the indices of the original array
      a.each_with_index do |elem,i|
          if elem == dupe_val
            locations << i 
          end
      end
      # we have the two locations so we stuff the delta
      # of the locations into the distances array
      distances << locations.max - locations.min # the 'distance'
  end

  return distances.min # the shortest 'distance'

end