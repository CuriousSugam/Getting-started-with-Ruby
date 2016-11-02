# Class Assignment 2: Write a custom iterator for each method.

arr = [1, 3, 5, 7, 9]
# array.each do |x|
# 	puts "#{x} "
# end
def custom_number_iterator(items)
	# items.each do |x|
	for i in 0...items.length
		x = items[i]
		puts "\nitem: #{x} processing start"
		yield x
		puts "item: #{x} processing stop\n\n"
	end
end

custom_number_iterator(arr) do |item|
	square = item * item
	puts "squate of #{item} is #{square}"
end