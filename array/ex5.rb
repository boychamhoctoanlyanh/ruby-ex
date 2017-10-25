puts "Nhap mang: "
array = Array.new
i = 0

until(i == -1)
	i = gets.to_i
	if(i >= 0)
		array.push i
	end
end

puts array.inspect

# array.sort! vs array.sort
# Asc


# TODO: Sort desc using sort method
array_new = array.sort {|x,y| -(x <=> y)}

puts array_new

# Use reverse
array.reverse


