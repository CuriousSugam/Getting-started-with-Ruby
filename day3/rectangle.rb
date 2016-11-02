require '~/work/getting_started_with_ruby/day3/shape.rb'
class Rectangle < Shape
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def area
		area = @length * @breadth
		puts "Area: #{area}"
	end
end

rectangle = Rectangle.new(2, 10).area