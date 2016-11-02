require '/home/sugam/RubymineProjects/RubyAssignments/day4/Name.rb'
class Human

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :scientific_name

  include Name

  def methodss
    puts Name::PI
  end
end

human = Human.new
human.first_name = "sunish"
human.last_name = "shakya"
human.scientific_name = "Homo sapiens"
human.complete_name
