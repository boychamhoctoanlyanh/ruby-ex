class Sinhvien   

	@@arr_sinhvien = Array.new
    @@sinhvien = Sinhvien.new
    attr_accessor :mssv, :hoten, :ngaysinh, :gioitinh, :lop, :khoa

    def to_s
    	"MSSV: #{mssv}Ho ten: #{hoten}Ngay sinh: #{ngaysinh}Gioi tinh: #{gioitinh}Lop: #{lop}Khoa: #{khoa}\n"
    end    

    def load filename
		file = filename		
		temp = 0
		File.readlines(file).each do |line|  
			temp = temp + 1
			if temp == 1
				sinhvien.mssv = line
			elsif temp == 2
				sinhvien.hoten = line
			elsif temp == 3
				sinhvien.ngaysinh = line
			elsif temp == 4
				sinhvien.gioitinh = line
			elsif temp == 5
				sinhvien.lop = line
			elsif temp == 6
				sinhvien.khoa = line
				arr_sinhvien.push sinhvien
				sinhvien = Sinhvien.new
				temp = 0
			end
		end
		return arr_sinhvien
	end

	def save filename, arr_sinhvien
		f = File.open(filename, 'w')
		for i in 0...arr_sinhvien.length do
			f.puts arr_sinhvien[i].mssv
			f.puts arr_sinhvien[i].hoten
			f.puts arr_sinhvien[i].ngaysinh
			f.puts arr_sinhvien[i].gioitinh
			f.puts arr_sinhvien[i].lop
			f.puts arr_sinhvien[i].khoa
		end
		f.close
	end

    def add sinhvien, p, arr_sinhvien
    	

    end

end