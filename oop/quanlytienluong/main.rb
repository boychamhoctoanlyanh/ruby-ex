require_relative 'congnhan'

puts "Nhap ma so: "
i = gets.to_i

cn = CongNhan.new
cong_nhan = cn.create(i)
cong_nhan.nhap_so_lieu
luong = cong_nhan.luong

puts "Luong: #{luong}"