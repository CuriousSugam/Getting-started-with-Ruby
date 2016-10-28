# Class Assignment 1: Write a method that divides two numbers. Handle exception when divide by 0.

begin
	a = 10
	b = 0
	result = a / b
rescue Exception 
	puts "a / b => #{a} / #{b} "
	puts "division by zero"
end
