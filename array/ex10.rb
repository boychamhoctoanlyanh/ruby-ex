puts "Nhap so phan tu"
n=gets.to_i
puts "Nhap mang: "
array=Array.new

for i in 0..n-1 do
	so=gets.to_f
	array.push so
end

puts array.inspect

puts "Nhap x: "
x=gets.to_f

array_new=Array.new

array.each do |num|
	
	if(num <= x)
		puts num
		array_new.push num
	end
end

puts array_new.inspect

# TODO: Giai bai nay su dung ham map hoac ham select
