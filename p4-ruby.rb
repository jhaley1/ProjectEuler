#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.

def pal
  largest = 0
  (900..999).each do |num1|
    (num1..999).each do |num2|
      product = num1 * num2
      largest = product if product > largest and is_palindrome?(product)
    end
  end
  largest
end

def is_palindrome?(num)
  a = num.to_s
  a == a.reverse
end

puts pal
s = Time.now
10000.times{ pal }
puts Time.now - s
