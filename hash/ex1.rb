hash=Hash.new
hash[1] = "Jane"
hash[2] = "Thomas"
hash[3] = "Robert"
hash[4] = "Julia"
hash[5] = "Rebecca"
hash[6] = "Germany"
hash[7] = "Slovakia"
hash[8] = "Hungary"
hash[9] = "United States"
hash[10] = "Norway"

i=0
until i==-1 do
	puts "Nhap id: "
	i=gets.to_i
	puts hash[i]
end