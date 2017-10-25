puts "Nhap mang: "
array = Array.new
i = 0

until(i == -1)
	i = gets.to_i
	if(i >= 0 )
		array << i
	end
end

puts array.inspect
sum = 0
array.each{|a| sum += a}

# TODO: Neu mang rong???
tbc = sum / array.length.to_f
puts tbc