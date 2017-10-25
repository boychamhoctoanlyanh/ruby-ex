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


puts "Nhap x: "
x=gets.to_i
temp=0
for i in 0...array.length do
	if(array[i]==x)
		array.delete_at(i)
		temp=temp+1
	end
end
puts array.inspect
puts temp

# Using array's method
old_length = array.length
array.delete x
count = old_length - array.length

# TODO: Xoa toan bo phan tu le cua mang su dung ham delete