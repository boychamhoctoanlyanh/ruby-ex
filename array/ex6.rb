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

puts "Nhap k:"
k=gets.to_i
if(k>array.length)
	puts "Nhap sai"
else
	array.delete_at(k-1)
end

puts array.inspect
