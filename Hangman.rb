class Hangman

	 attr_accessor :word, :chances, :board, :list, :guesses, :answer
	

		def initialize()
			puts "Hangman Game"
			@chances = 8
			@guesses = []
			@list = ["Canada", "England", "Australia", "Japan"]
			@word = @list.sample.downcase
			@board = start_board
		end
		
		
		def start_board
			board = '_' * @word.length
			return board.strip
		end

		
		def check_answer(letter)
			if @word.include?(letter)
				for i in (0...@word.length)
					if @word[i] == letter
					@board[i] = letter
					end
				end
			else
				@guesses << letter
				@chances -=1
			end
		end

		def check_win
			if @board.include?('_') == false
				return true	
			else
				return false
			end	
			
		end

		def check_lose
			if @chances == 0
				
				return true
			else
				return false
			end
			
		end
	
end



# Create array of words and use get_random_word to pull words from array for game.
# Display the blanks for this random word puts "_ _ _ _ _ _" 
# Ask player to make a guess to fill in the blanks
	# puts "Take your best shot! Enter a Guess"
	# answer = gets.chomp
	# puts "You entered:" + answer

	# # Check if player guessed_letter = a letter in the word
	# guesses << answer
	# if word.include?(answer)
	# 	puts"Good guess!"
	# end
# Show player the correct letter in the word
# OR
# Show player the incorrect letter in a list below
# Give player 8 chances to guess the word
# If guess is correct chances stay same
# If guess is incorrect chances = chances - 1
# Win = chances > 0 and guessed_letters = word_letters- end game (break)
# Lose = chances = 0 - end game (break)





# def status ("answer")
# 	status.each_index do |x|
# 		status[x] = status[x].count.to_s 
# end
#puts "Guessed:"


# puts "Chances"

# if 


