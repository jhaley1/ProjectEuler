# def champ
#   str = ""
#   i = 1
#
#   until str.length >= 1_000_000
#     str += i.to_s
#     i += 1
#   end
#
#   str[0].to_i * str[9].to_i * str[99].to_i * str[999].to_i * str[9_999].to_i * str[99_999].to_i * str[999_999].to_i
# end
#
# s = Time.now
# puts champ
# puts Time.now - s


def champ2
  str = ""

  # bare minimum...
  "1".upto("185185").each { |i| str << i }
  puts str.length

  str[0].to_i * str[9].to_i * str[99].to_i * str[999].to_i * str[9_999].to_i * str[99_999].to_i * str[999_999].to_i
end

s = Time.now
puts champ2
puts Time.now - s
