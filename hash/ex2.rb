hash=Hash.new
arr=Array.new
arr[1]=0
arr[2]=1
hash[1]=0
hash[2]=1
for i in 3..50 do
	arr[i]=arr[i-1].to_i+arr[i-2].to_i
	hash[i]=arr[i]
end

i=0
until i==-1 do
	puts "Nhap stt: "
	i=gets.to_i
	puts hash[i]
end