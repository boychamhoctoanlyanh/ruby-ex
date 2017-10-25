class Array
	def my_map &block
		i = 0
		new_self = Array.new
		while i < self.length
			new_self.push yield self[i]
			i += 1
		end
		return new_self
	end
end

arr = [1, 2, 3]

p arr.map { |n| n * 2 } 
p arr.my_map { |n|  n * 2} 


