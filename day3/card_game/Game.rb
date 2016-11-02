require '~/work/getting_started_with_ruby/day3/Card_constants.rb'
require '~/work/getting_started_with_ruby/day3/Card.rb'
require '~/work/getting_started_with_ruby/day3/Player.rb'
require '~/work/getting_started_with_ruby/day3/Deck.rb'

class Game
	
	def initialize
		@players = []
		@deck = Deck.new
		@deck.shuffle

		#flags
		@trial = []
		@double_run = []
		@run = []
		@color = []
		@pair = []
		@top = []
	end
	
	# Start the game
	def startGame
		puts "Enter the number of players:"
		player_number = gets.chomp.to_i

		# Create players in player array
		for i in 0...player_number
			player = Player.new
			@players << player
		end
	end

	# Dealt the cards
	def dealtCard
		for i in 1..3 do
			@players.each do |player|
				player.assignCard(@deck.throwACard)
			end	
		end		
	end

	# Show the cards
	def show
		@players.each do |player|
			player.showCards
			print "\n"
		end
	end

	# Decide Winner
	def decideWinner
		check_card
		puts "trial: #{@trial}"
		puts "double_run: #{@double_run}"
		puts "run: #{@run}"
		puts "color: #{@color}"
		puts "pair: #{@pair}"
		puts "top: #{@top.to_a}"

		# if there is only on trial then the trial wins
		if (@trial.include? 1)
			# if there is only one trial
			if(@trial.count(1) == 1)
				puts @players[@trial.index(1) + 1]
			else  # if there is more than one trial, u will need to compare all the trials and select the winner
				temp = 0
				for i in 0..2
					if(@players[i].cards[0].value == ACE)
						puts "Player#{i+1} is winner"
						return "Player#{i}"
					# elsif
					# 	if(temp < )
					end
				end
			end
		elsif (@double_run.include? 1)
			if(@double_run.count(1) == 1)
				puts @players[@double_run.index(1) + 1]
			else

			end
		elsif (@run.include? 1)
			if(@run.count(1) == 1)
				puts @players[@run.index(1) + 1]
			else

			end
		elsif (@color.include? 1)
			if(@color.count(1) == 1)
				puts @players[@color.index(1) + 1]
			else

			end
		elsif (@pair.include? 1)
			if(@pair.count(1) == 1)
				puts @players[@pair.index(1) + 1]
			else

			end
		end
	end

	private
	def check_card
		@players.each_with_index do |player, index|	
			for i in 0...3 
				# check for trial		
				if(player.cards[0].value == player.cards[1] && player.cards[0].value == player.cards[2] )
					@trial[index] = 1
				#check if it is double run or just color
				elsif (player.cards[0].suit == player.cards[1].suit && player.cards[0].suit == player.cards[2].suit)					
					card_values = []
					card_values << player.cards[0].value
					card_values << player.cards[1].value
					card_values << player.cards[2].value
					card_values.sort!
					if(card_values[0] == card_values[1]-1 && card_values[0] == card_values[2]-2)
						@double_run[index] = 1
					elsif(card_values[0] == 1 && card_values[0] == 12 && card_values[0] == 13)
						@double_run[index] = 1
					else
						@color[index] = 1
					end	
				# check if it is run	
				elsif (player.cards[0].suit == player.cards[1].suit && player.cards[0].suit == player.cards[2].suit)					
					card_values = []
					card_values << player.cards[0].value
					card_values << player.cards[1].value
					card_values << player.cards[2].value
					card_values.sort!
					if(card_values[0] == card_values[1]-1 && card_values[0] == card_values[2]-2)
						@run[index] = 1
					elsif(card_values[0] == 1 && card_values[0] == 12 && card_values[0] == 13)
						@run[index] = 1
					end	
				# check if it is a pair
				elsif (player.cards[0].value == player.cards[1].value || player.cards[0].value == player.cards[2].value || 
					player.cards[1].value == player.cards[2].value)
					@pair[index] = 1	
				else
					@top[index] = 1				
				end	
			end
		end
	end

	# private
	# def check_double_run
	# 	@players.each_with_index do |player, index|			
	# 		for i in 0...3 
	# 			if(player.cards[0].value == player.cards[1] && player.cards[0].value == player.cards[2] )
	# 				trial[index] = 1
	# 			end
	# 		end
	# 	end
	# end


	# private
	# def check_run
		
	# end

	# private
	# def check_color
		
	# end

	# private
	# def check_pair
		
	# end

	# private
	# def check_top
		
	# end

end


game = Game.new
game.startGame
game.dealtCard
game.show
game.decideWinner