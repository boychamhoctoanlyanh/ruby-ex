str="pHAM   hOAng       mInh"
str.downcase!


def chuan_hoa str
	arr=Array.new
	str_CH=String.new
	temp=0
	until str=="" do
		str_1=str.split(" ").first
		str.slice!(str_1)		
		arr[temp]=str_1
		str=str.strip
		temp=temp+1
	end
	for i in 0...temp do 
		str_CH.concat(arr[i].capitalize).concat(" ")
	end
	return str_CH
end

puts chuan_hoa str