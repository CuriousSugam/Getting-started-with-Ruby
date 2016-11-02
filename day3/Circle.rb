require '~/work/getting_started_with_ruby/day3/shape.rb'

class Circle < Shape
	PI = 3.1415
	
	def initialize(radius)
		@radius = radius
	end

	def area
		area = PI * @radius * @radius
		puts "Area: #{area}"
	end
end

circle = Circle.new(5).area