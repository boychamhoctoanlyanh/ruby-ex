puts "Nhap chuoi: "
str=gets.to_s
so=0
thuong=0
hoa=0


for i in 0...str.length do 
	for j in 0..9 do 
		if(str[i]==j.to_s)
			so=so+1
		end
	end
	for j in "a".."z" do 
		if(str[i]==j)
			thuong=thuong+1
		end
	end
	for j in "A".."Z" do 
		if(str[i]==j)
			hoa=hoa+1
		end
	end
end

puts "So: #{so}"
puts "Thuong: #{thuong}"
puts "Hoa: #{hoa}"