puts "a:"
a=gets.to_f
puts "b:"
b=gets.to_f

# TODO: Check truong hop a == 0
def pt a,b
	x=-b/a
	return x
end

x=pt a,b
puts "max:#{x}"

