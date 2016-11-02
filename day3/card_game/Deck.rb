require '~/work/getting_started_with_ruby/day3/Card_constants.rb'
require '~/work/getting_started_with_ruby/day3/Card.rb'

class Deck

	def initialize
		@deck = []
		for suit in 14..17
			for value in 1..13
				card = Card.new(suit, value)
				@deck << card
			end
		end
	end

	def showAllCardsInDeck
		@deck.each do |card|
			if(card.suit == HEARTS)
				puts "#{card.value} of HEARTS"
			elsif(card.suit == SPADE)
				puts "#{card.value} of SPADE"
			elsif(card.suit == CLUB)
				puts "#{card.value} of CLUB"	
			elsif(card.suit == DIAMOND)
				puts "#{card.value} of DIAMOND"
			end
		end
	end

	def shuffle
		@deck = @deck.shuffle
	end

	def throwACard
		return @deck.pop
	end
end

# deck = Deck.new
# deck.shuffle
# deck.showAllCardsInDeck