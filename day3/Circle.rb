require '~/work/getting_started_with_ruby/day3/shape.rb'

class Circle < Shape
	def initialize(radius)
		@radius = radius
	end

	def area
		area = @radius * @radius
		puts "Area: #{area}"
	end
end

circle = Circle.new(5).area