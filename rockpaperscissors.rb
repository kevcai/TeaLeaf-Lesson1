options = ["Rock", "Paper", "Scissors"]
computer_play = options.sample	
puts "Let's play Rock Paper Scissors"
puts "Choose One: Rock (R), Paper (P), Scissors (S)"
play = gets.chomp 
	if play == "R"
		if computer_play == "Rock"
		puts "It's a tie"
		elsif computer_play == "Paper"
		puts "Paper covers Rock - Computer wins!"
		elsif computer_play == "Scissors"
		puts "Rock breaks Scissors - You win!"
		end 
	elsif play == "P"
		if computer_play == "Rock"
		puts "Paper covers Rock - You win!"
		elsif computer_play == "Paper"
		puts "It's a tie"
		elsif computer_play == "Scissors"
		puts "Scissor cuts paper - Computer wins!"
		end 
	elsif play == "S"
		if computer_play == "Rock"
		puts "Rock breaks Scissors - Computer wins!"
		elsif computer_play == "Paper"
		puts "Scissor cuts Paper - You win!"
		elsif computer_play == "Scissors"
		puts "It's a tie"
		end 
	end 



