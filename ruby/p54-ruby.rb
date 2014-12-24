class Player
  attr_accessor :hand
  attr_reader   :wins, :name

  def initialize(name)
    @name = name
    @wins = 0
  end

  def hand(cards)
    @hand = Hand.new(cards)
  end

  def beat?(player2)
    @hand.score > player2.hand.score
  end
end


class Hand
  def initialize(cards)
    @cards = cards
  end
end


def number_of_wins
  player1 = Player.new(1)
  player2 = Player.new(2)

  File.open('../files/poker.txt').each do |line|
    hands = line.gsub(/\r\n/, '').split(/ /)
    hand1, hand2 = hands[0..4], hands[5..-1]

    player1.hand(hand1)
    player2.hand(hand2)

    player1.beat?(player2)
  end
end


puts number_of_wins
