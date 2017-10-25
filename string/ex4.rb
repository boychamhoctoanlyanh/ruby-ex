puts "Nhap chuoi: "
str=gets.to_s

temp=0

for i in 0...str.length do 
	if(str[i]==" ")	
		temp=temp+1	
	end
end
puts temp