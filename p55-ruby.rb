class Palindrome
  def initialize(num)
    @val = num
    @count = 0
  end

  def find_palindrome
    @count += 1
    num_s = @val.to_s

    sum = @val + num_s.reverse.to_i
    if palindrome?(sum.to_s)
      return sum
    else
      @val = sum
      return false if @count > 50
      @val = find_palindrome
    end

    @val
  end

  def palindrome?(num)
    num == num.reverse
  end
end

def lychrel_numbers
  lychrel_numbers = []

  (1..10_000).each do |num|
    p = Palindrome.new(num)
    is_p = p.find_palindrome
    lychrel_numbers << num unless is_p
  end

  lychrel_numbers.count
end

puts lychrel_numbers
