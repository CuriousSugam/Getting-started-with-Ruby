class Player

	# def initialize(card1, card2, card3)
		# @card1 = card1
		# @card2 = card2
		# @card3 = card3
		# @cards = []
	 	# @cards << card1
	# 	@cards << card2
	# 	@cards << card3
	# end
	def initialize
		@cards = []
	end

	def assignCard(card)
		@cards << card
	end

	def cards
		@cards
	end
	def showCards
		@cards.each do |card|
			print "#{Card.cardAsString(card.suit, card.value)} \t\t\t"
			# print "#{card.value} : #{card.suit} \t\t\t"
		end
	end
end