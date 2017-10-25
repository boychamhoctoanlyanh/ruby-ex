def nhap_mang
	puts "Nhap mang: "
	array=Array.new
	i = 0
	until(i == -1)
		i = gets.to_i
		if(i >= 0)
			array.push i
		end
	end
end

def nhap_vi_tri
	puts "Nhap k:"
	k = gets.to_i
end

def xoa_phan_tu arr, k	
	if(k > array.length)
		return "Invalid index #{k}"
	else
		array.delete_at(k-1)
		return "Deleted at #{k}"
	end
end

# Main
arr = nhap_mang
k = nhap_vi_tri
result = xoa_phan_tu arr, k
puts result