str="test1, test2, test3, test4, test5"

temp=0
until str=="" do
	str_1=str.split(" ").first
	str.slice!(str_1)
	str=str.strip
	temp=temp+1
end
puts "So tu trong chuoi: #{temp}"
