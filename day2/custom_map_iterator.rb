# Class Assignment 3: Write a custom iterator for map method using enumerator.

def custom_map(enumerable, &block)
	arr = []
	enumerable.each do |item|
		r = yield item
		# puts r
		arr << r
	end
	print "#{arr}\n"
end

custom_map([1,2,3]) do |item|
	item * 2
end