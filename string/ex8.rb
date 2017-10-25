str="pham hoang minh"
n=5
k=6
def remove str,n,k 
	for i in 0...n do 
		puts str[k]
		str.slice!(k)		
	end
	return str
end

puts remove str,n,k