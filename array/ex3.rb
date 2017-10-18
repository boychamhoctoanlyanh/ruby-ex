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

temp=0
array.each do |num|
	if(num==x)
		temp=temp+1
	end
end
puts temp