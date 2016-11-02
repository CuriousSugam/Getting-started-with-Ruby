# require 'Name.rb'
require '/home/sugam/RubymineProjects/RubyAssignments/day4/Name.rb'

class Animal

  attr_accessor :name
  attr_accessor :scientific_name

  include Name
end

animal = Animal.new
animal.name = "cat"
animal.scientific_name = "meow meow"
animal.complete_name