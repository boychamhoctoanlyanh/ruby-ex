puts "a:"
a=gets.to_f
puts "b:"
b=gets.to_f

def pt a,b
	x=-b/a
	return x
end

x=pt a,b
if(a>0)
	puts "Ket qua PT ax+b>0: x>#{x}"
	puts "Ket qua PT ax+b<0: x<#{x}"
end

if(a<0)
	puts "Ket qua PT ax+b>0: x<#{x}"
	puts "Ket qua PT ax+b<0: x>#{x}"
end

if ((a==0)&&(b>0))
	puts "Ket qua PT ax+b>0: PT dung voi moi x"
	puts "Ket qua PT ax+b<0: PT vo nghiem"
end
if ((a==0)&&(b<0))
	puts "Ket qua PT ax+b>0: PT vo nghiem"
	puts "Ket qua PT ax+b<0: PT dung voi moi x"
end