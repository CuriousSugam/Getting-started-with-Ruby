=begin 
	Write a program which has an array of diamonds with different value e.g. [1,2,3,4,5]. 
	The program should distribute the diamonds equally to 3 people. For example:
	Person 1: 1,4
	Person 2: 2,3
	Person 3: 5
	There may be any number of diamonds with any value. If diamonds cannot be equally distributed(e.g [1,2,3,4]), 
	the program should print message “Cannot distribute equally to 3 people”.
=end

# list of diamonds with values
arr = [1, 2, 3, 4, 5]

# calculate the total value to be divided to each person
total = 0
arr.each do |x|
	total += x
end
total_to_each = total / 3
# print total_to_each

person1 = []
person2 = []
person3 = []

def find_sum(arr, total_to_each)

	arr.each_with_index do |diamond_value, index|
		current_diamond_value = arr[index]
		# array_new = Array.new
		if current_diamond_value == total_to_each
			array_new = current_diamond_value
			return array_new
		else
			for i in (index+1...arr.length)
				sum = current_diamond_value + arr[i]
				if sum == total_to_each
					array_new = [current_diamond_value, arr[i]]
					return array_new
				end
			end
		end
	end

end
temp = []
temp = find_sum(arr, total_to_each)
person1 = Array(temp)

arr -= person1
temp = find_sum(arr, total_to_each)
person2 = Array(temp)

arr-= person2
temp = find_sum(arr, total_to_each)
person3 = Array(temp)



print "Person1: #{person1} \n"
print "Person2: #{person2} \n"
print "Person3: #{person3} \n"