# https://www.hackerrank.com/challenges/the-time-in-words/problem
# Medium

def time_in_words(h, m)
  
  # separate out the tens and units from the minutes
  # so 25 will return 20,5 and 40 will return 40,0 etc.
  def separate(minutes)
      tens = 10*(minutes/10)
      units = minutes%10
      return tens, units
  end
  
  # define a hash/dictionary to convert numbers to words
  number_to_word = 
  {
    1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',5 => 'five',
    6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
    11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
    16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
    20 => 'twenty', 40 => 'forty', 50 => 'fifty'
  }
  # 15 and 30 have 'special' words rather than fifteen and thirty
  # this could have been part of the earlier hash as well
  quarter_half = {15 => 'quarter', 30 => 'half'}

  # return if top of the hour immediately
  return  "#{number_to_word[h]} o' clock" if m == 0

  # if not 0 then figure out if we are 'past' or 'to'
  if m <= 30 
    stub = 'past'
  else
    # when > 30 we want to 
    # a) go to the next hour
    # b) go to (minutes = 60 - minutes) because 5:47 is 13 mins to 6
    stub = 'to'
    h += 1
    m = 60 - m
  end

  # handle the special cases of 15 and 30
  if m == 15 || m == 30
    minutes = quarter_half[m]
    return "#{minutes} #{stub} #{number_to_word[h]}"
  else
    if m > 19 # we don't want to convert 14 to 10,4. Only 20+
      tens, units = separate(m)
      mins_in_words = ''
      mins_in_words += number_to_word[tens] + " " if tens > 0
      mins_in_words += number_to_word[units] if units > 0
    else
      mins_in_words = number_to_word[m]
    end
    # all done. just need to handle pluralization
    return "#{mins_in_words} #{mins_in_words == 'one' ? "minute" : "minutes"} #{stub} #{number_to_word[h]}"
  end

end

puts time_in_words(5,47)
puts time_in_words(3,0)
puts time_in_words(1,1)
puts time_in_words(4,15)
puts time_in_words(9,30)
puts time_in_words(8,45)