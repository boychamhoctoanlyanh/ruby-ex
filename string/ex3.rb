puts "Nhap day so: "
str=gets.to_s

for i in 0...str.length do 
	case str[i]
		when "0"
			puts "khong"
		when "1"
			puts "mot"
		when "2"
			puts "hai"
		when "3"
			puts "ba"
		when "4"
			puts "bon"
		when "5"
			puts "nam"
		when "6"
			puts "sau"
		when "7"
			puts "bay"
		when "8"
			puts "tam"
		when "9"
			puts "chin"
	end
end
