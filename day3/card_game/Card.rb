require '~/work/getting_started_with_ruby/day3/Card_constants.rb'

class Card
	def initialize(suit, value)		
		if(suit != HEARTS && suit != SPADE && suit != DIAMOND && suit != CLUB)
			raise "Suit mismatch exception"
		end
		@suit = suit
		@value = value
	end

	def suit
		@suit
	end

	def value
		@value
	end

	# class method
	def self.cardAsString(suit, value)
		case suit
		when HEARTS
			suitString = "HEARTS"			
		when SPADE
			suitString = "SPADE"
		when CLUB
			suitString = "CLUB"
		when DIAMOND
			suitString = "DIAMOND"
		else 
			suitString = suit
		end

		case value
		when JACK
			valueString = "JACK"			
		when QUEEN
			valueString = "QUEEN"
		when KING
			valueString = "KING"
		when ACE
			valueString = "ACE"
		else
			valueString = value
		end

		return "#{valueString} of #{suitString}"
	end

end