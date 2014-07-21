deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]

def hit_method(total)
	deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]
	new_card = deck.sample.to_i
	new_total = total + new_card
	puts "You drew a #{new_card}. Your total is now #{new_total}"
		if new_total > 21 
			puts "BUST! Sorry - better luck next time."
		elsif new_total == 21

			puts "21!"
			stay_method(new_total)
		elsif new_total < 21 
			puts "Hit or Stay?"
			play = gets.chomp
				if play == "hit" || play == "Hit"
					hit_method(new_total)
				elsif play == "stay"
					stay_method(new_total)
				end
		end
end

def stay_method(total)
	puts "Let's see what the dealer has!"
	dealer_method
end

def dealer_method
	deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]
	dcard1 = deck.sample
	dcard2 = deck.sample
	dealer_total = dcard1 + dcard2
	puts "The dealer's cards are #{dcard1} and #{dcard2}. His total is currently #{dealer_total}"
		if dealer_total > 21
			puts "Dealer Busts. You Win!"
		elsif dealer_total < 17
			dealer_draw(dealer_total)
		else dealer_total >= 17 && dealer_total <= 21 
			compare_method(dealer_total)
		end 
end

def dealer_draw(total)
	deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]
	dcard_new = deck.sample 
	dtotal = total + dcard_new 
	puts "Dealer drew a #{dcard_new}. His new total is #{dtotal}."
		if dtotal > 21
			puts "Dealer Busts. You Win!"
		elsif dtotal < 17 
			dealer_draw(dtotal)
		else dtotal >= 17 && dtotal < 21
			compare_method(dtotal)
		end
end

def compare_method(total)
	puts "Dealer has #{total} - compare it to your Total."
end


puts "Welcome to the Blackjack table." 
puts "What is your name?" 
name = gets.chomp 
puts "Alright #{name}, let's get started!"

card1 = deck.sample.to_i
card2 = deck.sample.to_i
original_total = card1 + card2 
puts "#{name}, your two cards are #{card1} and #{card2} which add up to #{original_total}"

if original_total == 21
	puts "21!"
else 
	puts "Hit or Stay?"
end 

play = gets.chomp

if play == "hit" || play == "Hit"
	hit_method(original_total) 
elsif play == "stay" || play == "Stay" 
	stay_method(original_total)
end 