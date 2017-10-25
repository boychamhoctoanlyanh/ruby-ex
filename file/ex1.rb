f = File.open('ex1.txt', 'w')
str=" "
until str.empty? do

	puts "Nhap ten nhan vien: "
	str=gets.to_s
	f.puts str
	if(str.eql? "\n")
		str.clear
	end
end
f.close

file = 'ex1.txt' 
arr=Array.new
i=0
File.readlines(file).each do |line|
    arr[i]=line
    i=i+1
end

puts arr.sort