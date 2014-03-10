# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

#   1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

#   By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

#   Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?


def alphabet_position(letter)
  @values = @values || {}
  return @values[letter] if @values[letter]

  ('a'..'z').each_with_index do |curr, i|
    @values[curr] = i + 1
    return (i + 1) if curr == letter
  end
end

def tn_calc(num)
  (num * 0.5) * (num + 1)
end

def triangle_number?(total)
  (1..total).each do |i|
    return true if total == tn_calc(i)
  end

  false
end

def triangle_words
  triangle_nums = []
  f = File.open("tmp/words.txt", "r").read().split(/,/)

  f.each do |word|
    total = 0

    word.gsub('"', "").split(//).each do |c|
      total += alphabet_position(c.downcase)
    end

    triangle_nums << word if triangle_number?(total)
  end

  triangle_nums.length
end

puts triangle_words
