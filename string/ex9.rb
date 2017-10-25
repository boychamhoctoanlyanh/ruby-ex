str_1="toi la pham hoang minh"
str_2="pham minh"

def remove str_1,str_2
	until str_2=="" do
		str=str_2.split(" ").first
		str_remove=str_2.slice!(str)
		str_1.slice!(str_remove)

		str_2=str_2.strip
	end
	return str_1
end

puts remove str_1,str_2