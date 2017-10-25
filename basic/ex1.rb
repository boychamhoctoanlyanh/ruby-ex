puts "chieu dai:"
cd = gets.to_i
puts "chieu rong:"
cr = gets.to_i

if cd <= 0 or cr <= 0
	puts"nhap sai"
else
	cv = (cd + cr) * 2
	dt = cd * cr
	puts "chu vi: #{cv}"
	puts "dien tich: #{dt}"
end