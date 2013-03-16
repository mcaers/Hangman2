require_relative 'hangman'

#figure out a random word to use for the game
class HangPlay


	# Starts the hangman game

	def self.start 
		@@game = Hangman.new()
		while true
		self.show_round
		break if @@game.check_win || @@game.check_lose
		end
	end

	def self.show_round
		puts "" 
		puts "=================================================="
		puts ""
		puts "Board: #{@@game.board}"
		puts ""
		puts "Guessed letters: #{@@game.guesses} "
		puts ""
		puts ""
		puts "Chances: #{@@game.chances}" 
		puts ""
		puts "Take your best shot! Enter guess:"
		letter_guess = gets.chomp
		@@game.check_answer(letter_guess)
		puts ""
		if @@game.check_win == true
			puts "Congratulations! You're a Winner"
			puts "The word is..." + @@game.word 
		end
		if @@game.check_lose == true
			puts "Game over. The word is ..." + @@game.word
			puts "Try again!"
		end
		puts ""
		puts "+++++++++++++++++++++++++++++++++++++++++++++++++++"
		puts ""

		
	end
end 

# HangPlay.start

# Create array of words and use random function to pull words from array for game.
# Display the blanks for this random word puts "_ _ _ _ _ _" 
# Ask player to make a guess to fill in the blanks
# Check if player guessed_letter = a letter in the word
# Show player the correct letter in the word
# OR
# Show player the incorrect letter in a list below
# Give player 8 chances to guess the word
# If guess is correct chances stay same
# If guess is incorrect chances = chances - 1
# Win = chances > 0 and guessed_letters = word_letters- end game (break)
# Lose = chances = 0 - end game (break)

