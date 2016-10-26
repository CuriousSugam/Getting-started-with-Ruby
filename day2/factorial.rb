# Class Assignment 1: Write a program to find factorial of a number using recursive method.


def factorial(number)
	if number == 1 
		return 1
	else
		fact = number * factorial(number-1)
		return fact
	end
end

puts "Enter a number: "
number = gets.to_i
puts "The factorial of #{number} is #{factorial(number)}" 
