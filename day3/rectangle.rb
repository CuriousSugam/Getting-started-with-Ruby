require '~/work/getting_started_with_ruby/day3/shape.rb'
class Rectangle < Shape
	def initialize(length, breadth)
		super(length, breadth)
	end
end

rectangleArea = Rectangle.new(2, 10).area
puts "Area: #{rectangleArea}"