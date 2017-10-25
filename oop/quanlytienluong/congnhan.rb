class CongNhan
	attr_accessor :luong_CB, :luong
	def create i 
		if(i == 1)
			return QuanLy.new
		elsif (i == 2)
			return CongNhanGio.new
		elsif (i == 3)
			return CongNhanLoiNhuan.new
		elsif (i == 4)
			return CongNhanSp.new			
		end
	end
end

class QuanLy < CongNhan
	def nhap_so_lieu
		puts "Nhap luong x: "
		@luong_CB = gets.to_i	
	end

	def luong 
		@luong = luong_CB
	end
end

class CongNhanGio < CongNhan
	attr_accessor :h

	def nhap_so_lieu
		puts "Nhap luong y: "
		@luong_CB = gets.to_i			
		puts "Nhap so gio lam them: "
		@h = gets.to_i
	end
	
	def luong
		@luong = luong_CB+luong_CB/40*1.5*h
	end
end

class CongNhanLoiNhuan < CongNhan
	attr_accessor :z

	def nhap_so_lieu
		puts "Nhap doanh so z: "
		@z = gets.to_i
	end
	
	def luong
		@luong = 500000+z*7/100
	end
end

class CongNhanSp < CongNhan
	attr_accessor :n, :s
		
	def nhap_so_lieu
		puts "Nhap so san pham: "
		@n = gets.to_i
		puts "Nhap so tien 1 san pham: "
		@s = gets.to_i
	end
	
	def luong
		@luong = n*s
	end
end

