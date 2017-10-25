f = File.open('ex1.txt', 'w')
puts "Nhap n: "
n=gets.to_i
for i in 0...n do 
	f.puts rand(100)
end	
f.close

file = 'ex1.txt' 
arr=Array.new
i=0
sum=0
File.readlines(file).each do |line|
    sum=sum+line.to_i   
end
puts sum
