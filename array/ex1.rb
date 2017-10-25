puts "Nhap mang: "
array=Array.new
i=0

until(i == -1)
	i = gets.to_i
	if(i >= 0)
		array.push i
	end
end

puts array.inspect

min = array.min

puts min

# array.min
# 


# TODO: To chuc lai cac chuong trinh thanh cac ham
# Viet cac ham dung chung vao mot file rieng
# Trong cac bai tap, require file chung de dung thay vi viet lai  	 	