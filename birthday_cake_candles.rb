# https://www.hackerrank.com/challenges/birthday-cake-candles/problem
# Easy

def birthday_cake_candles(candles)
  max = candles.max # this gets the max height
  count = 0
  candles.each do |val| # iterate through the array
      count += 1 if val == max # increment if height == max_height
  end
  return count # return it
end