# Program to display if the inputted number is a prime number

puts "Enter a number: "
input = gets
input_number = input.to_i
if input_number == 1
	puts "Its a unit number"
if (input_number == 2 || input_number == 3)
	puts "The number is a prime number"
else
	for i in 2...input_number 
		if input_number % i == 0 
			break
		end
	end
	if (i == input_number-1)
		puts "The number is prime number"
	else 
		puts "The number is not a prime number"
	end
end
