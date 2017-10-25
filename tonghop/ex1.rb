class Array
	def my_each
		i = 0
		while i < self.length
			yield self[i]
			i += 1
		end

		self
	end
end

arr = [1, 2, 3]
puts arr.my_each { |n|  puts n * 2} 
puts arr.each { |n| puts n * 2 } 

