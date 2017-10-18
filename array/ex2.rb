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

sum=0
array.each do |num|
	sum=sum+num
end
puts sum/array.length.to_f