require 'pry'

def say(msg)
	puts "=> #{msg}"
end

say("What is your first number?")
num1 = gets.chomp.to_i

say("What is your second number?")
num2 = gets.chomp.to_i

say("Enter 1) Add 2) Subtract 3) Multiply 4) Divide")
say("What would you like to do with these two numbers?")
operator = gets.chomp.to_i

say("Your numbers are #{num1} and #{num2}. You want me to perform operation #{operator}.")

say("If this is correct, please enter 1")

confirm = gets.chomp.to_i 

if confirm == 1 
	puts "Great!"
end 

if operator ==1 
	puts num1 + num2 
elsif operator == 2
	puts num1 - num2
elsif operator == 3 
	puts num1 * num2
elsif operator == 4
	puts num1.to_f / num2.to_f
end 