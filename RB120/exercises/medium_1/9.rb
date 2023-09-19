class Card
  CARD_RELATIVE_VALUES = [2,3,4,5,6,7,8,9,10,'Jack','Queen','King','Ace']
  include Comparable
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    CARD_RELATIVE_VALUES.index(rank) <=> CARD_RELATIVE_VALUES.index(other_card.rank)
  end

  def ==(other_card)
    rank == other_card.rank && suit == other_card.suit
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def build_deck
    deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck.push(Card.new(rank,suit))
      end
    end
    deck
  end
  
  def initialize
    @deck = build_deck.shuffle!
  end

  def draw
    @deck = build_deck.shuffle! if @deck.empty?
    @deck.pop
  end
end


deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13


drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.