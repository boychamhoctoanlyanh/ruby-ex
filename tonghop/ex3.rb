class Object
	def say_hello		
		puts "Hi, I am a #{self.class.name}!"
	end		
end

class User
     
end

u = User.new

u.say_hello