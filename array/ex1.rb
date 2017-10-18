puts "Nhap mang: "
array=Array.new
i=0
until(i==-1)
	i=gets.to_i
	if(i>=0)
		array.push i
	end
end

puts array.inspect

min=array[0]
array.each do |num|
	if(min>num)
		min=num
	end
end
puts min