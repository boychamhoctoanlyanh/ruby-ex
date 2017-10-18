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

puts array.sort!

puts "Nhap x:"
x=gets.to_i
array.push(x)

puts array.inspect

puts array.sort!