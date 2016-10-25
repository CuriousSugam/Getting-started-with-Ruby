#Program to convert celsius to fahrenheit

puts "Enter temperature in celsius"
temperature = gets
celsius = temperature.to_f
fahrenheit = celsius * 1.8 +32
puts "Celsius: #{celsius}"
printf "Fahrenheit: %.2f \n", fahrenheit

