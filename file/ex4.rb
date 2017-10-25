puts "Nhap duong dan: "
link = gets.to_s
puts Dir[link.delete("\n").concat("*")]