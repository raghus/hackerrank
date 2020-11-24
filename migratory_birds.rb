# https://www.hackerrank.com/challenges/migratory-birds/problem
# Easy

def migratory_birds(arr)
  species = {} # set up a hash for counting the species
  arr.each do |bird|
      species[bird].nil? ? species[bird] = 1 : species[bird] += 1
  end

  # now the species hash has keys = species and values = counts 
  # for each species. our next step is to find the most frequent 
  # bird species but first we find the greatest number of sightings
  # ie the max value of the hash
  
  max = 0 # start at zero
  species.each do |k,v|
      if v > max
          max = v # high water mark it
      end
  end

  # now we need to find the species ie the keys 
  # for which value == max so we go iterate through
  # the hash again

  most_frequent_birds = [] # initialize the array
  species.each do |k,v|
      if v == max
        # if value matches max, stuff the key into the array
        most_frequent_birds << k
      end
  end
  
  # more than one species may have been seen max times
  # return the smallest ID as specified
  return most_frequent_birds.min
end