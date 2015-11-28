class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end
end

class Deck

  def initialize
    @deck = []
    @deck << Card.new(2, :spades)
    @deck << Card.new(3, :spades)
    @deck << Card.new(4, :spades)
    @deck << Card.new(5, :spades)
    @deck << Card.new(6, :spades)
    @deck << Card.new(7, :spades)
    @deck << Card.new(8, :spades)
    @deck << Card.new(9, :spades)
    @deck << Card.new(10, :spades)
    @deck << Card.new("J", :spades)
    @deck << Card.new("Q", :spades)
    @deck << Card.new("K", :spades)
    @deck << Card.new("A", :spades)
    @deck << Card.new(2, :diamonds)
    @deck << Card.new(3, :diamonds)
    @deck << Card.new(4, :diamonds)
    @deck << Card.new(5, :diamonds)
    @deck << Card.new(6, :diamonds)
    @deck << Card.new(7, :diamonds)
    @deck << Card.new(8, :diamonds)
    @deck << Card.new(9, :diamonds)
    @deck << Card.new(10, :diamonds)
    @deck << Card.new("J", :diamonds)
    @deck << Card.new("Q", :diamonds)
    @deck << Card.new("K", :diamonds)
    @deck << Card.new("A", :diamonds)
    @deck << Card.new(2, :clubs)
    @deck << Card.new(3, :clubs)
    @deck << Card.new(4, :clubs)
    @deck << Card.new(5, :clubs)
    @deck << Card.new(6, :clubs)
    @deck << Card.new(7, :clubs)
    @deck << Card.new(8, :clubs)
    @deck << Card.new(9, :clubs)
    @deck << Card.new(10, :clubs)
    @deck << Card.new("J", :clubs)
    @deck << Card.new("Q", :clubs)
    @deck << Card.new("K", :clubs)
    @deck << Card.new("A", :clubs)
    @deck << Card.new(2, :hearts)
    @deck << Card.new(3, :hearts)
    @deck << Card.new(4, :hearts)
    @deck << Card.new(5, :hearts)
    @deck << Card.new(6, :hearts)
    @deck << Card.new(7, :hearts)
    @deck << Card.new(8, :hearts)
    @deck << Card.new(9, :hearts)
    @deck << Card.new(10, :hearts)
    @deck << Card.new("J", :hearts)
    @deck << Card.new("Q", :hearts)
    @deck << Card.new("K", :hearts)
    @deck << Card.new("A", :hearts)
  end

  def deal_deck
    deleted_card = @deck.first

    puts "This is the card that we took out:" 
    deleted_card.output_card
    puts ""
    @deck.shift
  end

  def shuffle_deck
    @deck.shuffle!
  end

  def output
    @deck.each do |card|
      card.output_card
    end
  end

  def length_deck
    puts "There are #{@deck.count} cards left in the deck."
  end

end

new_card = Deck.new
new_card.shuffle_deck
new_card.deal_deck


new_card.output
new_card.length_deck
