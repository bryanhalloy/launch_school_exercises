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




# Include Card and Deck classes from the last two exercises.

class PokerHand
  def initialize(deck)
    if deck.class == [].class
      @hand = deck
    else
      @hand = [deck.draw, deck.draw, deck.draw, deck.draw, deck.draw]
    end
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def rank_counts_hash
    count_hash = {}
    @hand.map{|card| card.rank}.uniq.each do |uniq_rank|
      @hand.map{|card| card.rank}.count(uniq_rank) = count_hash[uniq_rank]
    end
    count_hash
  end

  
  def royal_flush?
  end

  def straight_flush?
  end

  def four_of_a_kind?
    @hand.map {|card| card.rank}.uniq.size == 2
  end

  def full_house?
  end

  def flush?
    @hand.map {|card| card.suit}.uniq.size == 1
  end

  def straight?
  end

  def three_of_a_kind?
    rank_counts_hash.any? do |uniq_rank|
      count_hash[uniq_rank] == 3 
    end
  end

  def two_pair?
  end

  def pair?
    rank_counts_hash.any? do |uniq_rank|
      count_hash[uniq_rank] == 2 

    end
  end
end



# hand = PokerHand.new(Deck.new)
# hand.print
# puts hand.evaluate


hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'


