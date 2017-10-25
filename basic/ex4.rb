puts "a:"
a=gets.to_i
puts "b:"
b=gets.to_i
puts "c:"
c=gets.to_i
puts "d:"
d=gets.to_i
def max a,b,c,d
	if a>=b
		max=a
	else 
		max=b
	end
	if max<=c
		max=c
	end
	if max<=d
		max=d
	end
	return max
end
def min a,b,c,d
	if a>=b
		min=b
	else 
		min=a
	end
	if min>=c
		min=c
	end
	if min>=d
		min=d
	end
	return min
end
	ln=max a,b,c,d
	nn=min a,b,c,d
	puts "max:#{ln}"
	puts "min:#{nn}"

