# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
# Easy

def breaking_the_records(scores)

  # set up variables 
  highs = lows = 0 # trackers
  running_scores = [] # # running array
  
  # iterate through the scores array
  scores.each_with_index do |score,indx|
      if indx == 0
        # no comparisons needed for the first score
        # just add it to the running array and move on
        running_scores << score
        next
    end

    # check this score is > running max and if so
    # set this as the new max and increment highs
    if score > running_scores.max
      current_high_score = score
      highs += 1
    end
    # check this score is < running min and if so
    # set this as the new min and increment lows
    if score < running_scores.min
      current_low_score = score
      lows += 1
    end
    # *now* put this score into the array to prevent comparisons with itself
    running_scores << score
  end

  # all done just return the two values desired
  return [highs,lows]
end