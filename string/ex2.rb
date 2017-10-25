puts "Nhap ten: "
str=gets.to_s
str_new=String.new

puts "Ho: "
temp=0

for i in 0...str.length do 
	if(str[i]!=" ")
		str_new.concat(str[i])
	else
		puts str_new
		str_new.clear()
		if(temp==0)
			puts "Ten dem: "
			temp=1
		end
	end
end
puts "Ten: #{str_new}"