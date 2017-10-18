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
array_new=Array.new

for i in 1...array.length do
	if(array[i]>array[i-1])
		if(array_new.length==0)
			array_new.push array[i-1]
		end
		array_new.push array[i]
	else
		puts array_new.inspect
		array_new.clear
	end
end