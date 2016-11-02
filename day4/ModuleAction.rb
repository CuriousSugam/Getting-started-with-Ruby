require '~/work/getting_started_with_ruby/day4/ModuleTrig.rb'

module Action
	ACTION = 1

#instance method
	def instanceMethod(input)
		p input
	end	

# class method
	def self.mymethod
		puts "module Action mymethod"
	end

# class method
	def Action.myClassMethod
		puts "this is class method of Action module"
	end
end

class ModuleTest
	include Action
	include Trig

	def initialize
		instanceMethod("module test")
		Action.mymethod
		Action.myClassMethod

		Trig.myClassMethod
		puts Trig::PI
		puts ACTION
	end
end

class Moduletest2
	include Action
	include Trig

	def initialize

		instanceMethod("module test 2")
		Action.myClassMethod
	end

end

Moduletest2.new
ModuleTest.new
