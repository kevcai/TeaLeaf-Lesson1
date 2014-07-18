deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]

# Greeting + get name 

puts "Welcome to the Blackjack table." 
puts "What is your name?" 
name = gets.chomp 
puts "Alright #{name}, let's get started!"

# Deal the cards 
puts "----- Deck is being shuffled -----"
puts "---------- Dealer Deals ----------"

card1 = deck.sample.to_i
card2 = deck.sample.to_i
original_total = card1 + card2 
puts "#{name}, your two cards are #{card1} and #{card2} which add up to #{original_total}"

if original_total > 21
	puts "You BUSTED"
elsif original_total == 21
	puts "You WIN"
elsif original_total < 21 
	puts "Would you like to Hit or Stay?"
	play = gets.chomp 
	if play == "Hit" || play == "hit"
		card3 = deck.sample.to_i
		puts "You drew a #{card3}"
		total = card1 + card2 + card3
		puts "#{name}, your total is now #{total}"
		if total > 21 
			puts "You BUSTED! Thank you for playing #{name}"
		elsif total < 21 
			puts "Would you like to Hit or Stay?"
			play = gets.chomp 
				if play == "Hit" || play == "hit"
					card4 = deck.sample.to_i
					puts "You drew a #{card4}"
					new_total = total + card4
					puts "#{name}, your new total is now #{new_total}"
				elsif play == "Stay" || play ==	 "stay"
					puts "#{name}, your total is #{new_total}" 
					if stay_total > 21 
						puts "You BUSTED! Thank you for playing #{name}"
					elsif stay_total < 21
						puts "Let's see what the dealer has!"
					end
				end
	elsif play == "Stay" || play == "stay"
		end	
	end 
end
	#figure out how to loop if the user doesn't input Hit or Stay 
