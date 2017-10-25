puts "a:"
a=gets.to_i
puts "b:"
b=gets.to_i
puts "c:"
c=gets.to_i

if a<=0 or b<=0 or c<=0 or a+b<c or a+c<b or b+c<a
	puts"nhap sai"
else
	cv=a+b+c
	dt=Math.sqrt((a+b+c)*(a+b-c)*(b+c-a)*(a+c-b))/4
	puts "chu vi: #{cv}"
	puts "dien tich: #{dt}"
end