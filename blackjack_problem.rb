deck = [1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11]

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

def bust_method
  if original_total > 21 
    puts "You have BUSTED!"
  elsif original_total == 21
    puts "You got 21!"
  elsif original_total < 21 
    puts "Hit or Stay?"
  end 
end 

bust_method