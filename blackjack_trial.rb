# this method gets called when the player chooses to hit. A new card is drawn.

def hit_method(deck)
	new_card = deck.sample.to_i 
	puts "You drew a #{new_card}"
	new_total = old_total + new_card
	puts "Your new total is #{new_total}"
		if new_total > 21
			puts "You Bust"
		elsif new_total == 21
			puts "You Win"
		elsif new_total < 21
			hitstay_method
		end
end 

# this method gets called when the player chooses to stay. it leads to the dealer's turn 

def stay_method
	puts "Your total is now #{new_total}. Let's see what the dealer has."
	dealer_method
end

# this method gets called when it is the dealer's turn. it will run recursively until dealer has either busted or is between 17 and 21

def dealer_method
	dcard1 = deck.sample
	dcard2 = deck.sample
	puts "The dealer's cards are #{dcard1} and #{dcard2}. His total is currently #{dealer_total}"
		if dealer_total > 21
			puts "Dealer Busts"
		elsif dealer_total < 17 
			puts "Dealer needs to draw"
			dealer_draw
		else dealer_total >= 17 && dealer_total <= 21 
			compare_method 
		end 
end

# this method gets called when the dealer's original hand is under 17. it will run recursively until the dealer has either busted or is between 17 and 21 

def dealer_draw
	dcard_new = deck.sample 
	dealer_total_new = dealer_total + dcard_new 
	puts "Dealer drew a #{dcard_new}. His new total is #{dealer_total_new}."
		if dealer_total_new > 21 
			puts "Dealer Busts"
		elsif dealer total < 21
			dealer_draw
		else dealer_total_new >= 17 && dealer_total_new <= 21 
			compare_method
		end
end

# this method gets called when the player is asked whether he wants to hit or stay. this leads to the hit_method or stay_method

def hitstay_method
	puts "Would you like to Hit or Stay?"
	play = gets.chomp
	if play == "Hit" || play == "hit"
		puts "hit_method" 
	elsif play == "Stay" || play == "stay"
		puts "stay_method" 
	else 
		hitstay_method 
	end
end

# this method gets called when the game is over and we can choose a winner 

def compare_method
	if dealer_final > player_final 
		puts "Sorry, #{name}, Dealer wins!"
	elsif player_final > dealer_final
		puts "Congrats #{name}, You won!"
end


board = initialize_board
draw_board(board)
begin
  player_places_piece(board)
  draw_board(board)
  computer_places_piece(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || nine_positions_are_filled?(board)
if winner
  announce_winner(winner)
else
  puts "It's a tie."
end

deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]

# this method is called whenever there is a card drawn. it checks to see if the player has busted. 

def bust_method
	if original_total > 21 
		puts "You have BUSTED!"
	elsif original_total == 21
		puts "You got 21!"
	elsif original_total < 21 
		puts "Hit or Stay?"
	end 
end 