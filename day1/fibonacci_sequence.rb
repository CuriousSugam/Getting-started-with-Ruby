puts "Program to display fibonacci sequence upto 20th element"
puts "-------------------------------------------------------"
f = 1
s = 1
puts f
puts s
for i in 1..18
	temp = f+s
	puts temp
	f,s = s,temp
end	
