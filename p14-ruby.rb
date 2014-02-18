class Collatz
  @@longest_chain = 0
  @@longest_sequence = 0

  def self.longest_sequence
    @@longest_sequence
  end

  def initialize(num)
    @current_chain_length = 0
    @num = num
  end

  def collatz(num = @num)
    @current_chain_length += 1
    return if num == 1

    if num.even?
      collatz(handle_even(num))
    else
      collatz(handle_odd(num))
    end

    if num == @num && @current_chain_length > @@longest_chain
      @@longest_chain = @current_chain_length
      @@longest_sequence = @num
    end
  end

  def handle_even(num)
    num / 2
  end

  def handle_odd(num)
    3 * num + 1
  end
end

s = Time.now
999_999.downto(1) do |i|
  c = Collatz.new(i)
  c.collatz(i)
end

puts Collatz.longest_sequence
puts Time.now - s




class Collatz2
  @@longest_chain = 0
  @@longest_sequence = 0
  @@cached_sequences = {}

  def self.longest_sequence
    @@longest_sequence
  end

  def initialize(num)
    @current_chain_length = 0
    @num = num
  end

  def collatz(num = @num)
    @current_chain_length += 1
    return if num == 1

    if @@cached_sequences.has_key?(num)
      @current_chain_length += @@cached_sequences[num]
    else
      if num.even?
        collatz(handle_even(num))
      else
        collatz(handle_odd(num))
      end
    end

    @@cached_sequences[@num] = @current_chain_length

    if num == @num && @current_chain_length > @@longest_chain
      @@longest_chain = @current_chain_length
      @@longest_sequence = @num
    end
  end

  def handle_even(num)
    num / 2
  end

  def handle_odd(num)
    3 * num + 1
  end
end

s = Time.now
1.upto(999_999) do |i|
  c = Collatz2.new(i)
  c.collatz(i)
end

puts Collatz2.longest_sequence
puts Time.now - s
