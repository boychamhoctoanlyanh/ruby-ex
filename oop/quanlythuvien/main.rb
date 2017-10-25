require_relative 'User'  
require_relative 'Book'

book = Book.new
arr_user = Array.new

def get_user
	file = 'user.txt' 
	arr_user = Array.new
	user = User.new
	temp = 0
	File.readlines(file).each do |line|  
		temp = temp + 1
		if temp == 1
			user.id = line
		elsif temp == 2
			user.username = line
		elsif temp == 3
			user.password = line
			arr_user.push user
			user = User.new
			temp = 0
		end
	end
	return arr_user
end

def list_user
	arr_user = get_user
	puts "Danh sach nguoi dung:\n---------------------------"
	for i in 0...arr_user.length
		user = User.new
		user = arr_user[i]
		puts user.to_s
	end
end

def add_user
	f = File.open('user.txt', 'a')
	arr_user = get_user
	f.puts get_user[-1].id.to_i + 1
	puts "Nhap thong tin nguoi dung:\nTen truy cap: "
	username = gets.to_s
	f.puts username
	puts "Mat khau: "
	password = gets.to_s
	f.puts password
	puts "Them thanh cong\n"
	f.close
end

def remove_user
	arr_user = get_user
	puts "Nhap id nguoi dung muon xoa: "
	id = gets.to_i
	for i in 0...get_user.length do
		if(get_user[i].id.to_i == id)
			arr_user.delete_at(i)
		end
	end
	f = File.open('user.txt', 'w')
	for i in 0...arr_user.length do
		f.puts arr_user[i].id
		f.puts arr_user[i].username
		f.puts arr_user[i].password
	end
	puts "Xoa thanh cong\n"
	f.close
end

def edit_user
	arr_user = get_user
	user = User.new
	puts "Nhap id nguoi dung muon thay doi: "
	id = gets.to_i
	user.id = id
	puts "Nhap ten truy cap muon thay doi: "
	username = gets.to_s
	user.username = username
	puts "Nhap mat khau muon thay doi: "
	password = gets.to_s
	user.password = password

	for i in 0...get_user.length do
		if(get_user[i].id.to_i == id)
			arr_user[i] = user
		end
	end
	f = File.open('user.txt', 'w')
	for i in 0...arr_user.length do
		f.puts arr_user[i].id
		f.puts arr_user[i].username
		f.puts arr_user[i].password
	end
	puts "Thay doi thanh cong\n"
	f.close
end

def get_book 
	file = 'book.txt'
	arr_book = Array.new
	book = Book.new
	i = 0
	temp = 0
	File.readlines(file).each do |line|  
		temp = temp + 1
		if temp == 1
			book.id = line
		elsif temp == 2
			book.title = line
		elsif temp == 3
			book.subject = line
		elsif temp == 4
			book.author = line
		elsif temp == 5
			book.publisher = line
		elsif temp == 6
			book.date = line
		elsif temp == 7
			book.pages = line
		elsif temp == 8
			book.copies = line
			arr_book.push book
			book = Book.new
			temp = 0
			i = i + 1
		end
	end
	return arr_book
end

def list_book
	arr_book = get_book
	puts "Danh sach sach:\n---------------------------"
	for i in 0...arr_book.length
		book = User.new
		book = arr_book[i]
		puts book.to_s
	end
end

def add_book
	f = File.open('book.txt', 'a')
	arr_book = get_book
	f.puts get_book[-1].id.to_i + 1
	puts "Nhap thong tin sach:\nTen sach: "
	title = gets.to_s
	f.puts title
	puts "Chu de: "
	subject = gets.to_s
	f.puts subject
	puts "Tac gia: "
	author = gets.to_s
	f.puts author
	puts "Nha xuat ban: "
	publisher = gets.to_s
	f.puts publisher
	puts "Ngay xuat ban: "
	date = gets.to_s
	f.puts date
	puts "So trang: "
	pages = gets.to_i
	f.puts pages
	puts "So ban copy: "
	copies = gets.to_i
	f.puts copies
	puts "Them thanh cong\n"
	f.close
end

def remove_book
	arr_book = get_book
	puts "Nhap id sach muon xoa: "
	id = gets.to_i
	for i in 0...get_book.length do
		if(get_book[i].id.to_i == id)
			arr_book.delete_at(i)
		end
	end
	f = File.open('book.txt', 'w')
	for i in 0...arr_book.length do
		f.puts arr_book[i].id
		f.puts arr_book[i].title
		f.puts arr_book[i].subject
		f.puts arr_book[i].author
		f.puts arr_book[i].publisher
		f.puts arr_book[i].date
		f.puts arr_book[i].pages
		f.puts arr_book[i].copies
	end
	puts "Xoa thanh cong\n"
	f.close
end

def edit_book
	arr_book = get_book
	book = Book.new
	puts "Nhap id sach muon thay doi: "
	id = gets.to_i
	book.id = id	
	puts "Nhap ten sach muon thay doi: "
	title = gets.to_s
	book.title = title
	puts "Nhap chu de muon thay doi: "
	subject = gets.to_s
	book.subject = subject
	puts "Nhap tac gia muon thay doi: "
	author = gets.to_s
	book.author = author
	puts "Nhap nha xuat ban muon thay doi: "
	publisher = gets.to_s
	book.publisher = publisher
	puts "Nhap ngay xuat ban muon thay doi: "
	date = gets.to_s
	book.date = date
	puts "Nhap so trang muon thay doi: "
	pages = gets.to_i
	book.pages = pages
	puts "Nhap so ban copy muon thay doi: "
	copies = gets.to_i
	book.copies = copies

	for i in 0...get_book.length do
		if(get_book[i].id.to_i == id)
			arr_book[i] = book
		end
	end
	f = File.open('book.txt', 'w')
	for i in 0...arr_book.length do
		f.puts arr_book[i].id
		f.puts arr_book[i].title
		f.puts arr_book[i].subject
		f.puts arr_book[i].author
		f.puts arr_book[i].publisher
		f.puts arr_book[i].date
		f.puts arr_book[i].pages
		f.puts arr_book[i].copies
	end
	puts "Thay doi thanh cong\n"
	f.close
end

def login username,password
	arr_user = get_user
	temp = 0
	for i in 0...arr_user.length do
		if((arr_user[i].username == username) && (arr_user[i].password == password))
			temp = 1
		end
	end
	return temp
end

def quan_ly
	while 1 do
		puts "Xin moi lua chon: \n1.Quan ly nguoi dung\n2.Quan ly sach\n0.Thoat"
		i = gets.to_i
		case i
			when 1
				puts "Xin moi lua chon: \n1.Danh sach nguoi dung\n2.Them nguoi dung\n3.Sua thong tin nguoi dung\n4.Xoa nguoi dung\n0.Quay lai"
				i = gets.to_i
				case i
					when 1
						list_user
					when 2
						add_user
					when 3
						edit_user
					when 4
						remove_user
					when 0
						next
				end
			when 2			
				puts "Xin moi lua chon: \n1.Danh sach sach\n2.Them sach\n3.Sua thong tin sach\n4.Xoa sach\n0.Quay lai"
				i = gets.to_i
				case i
					when 1
						list_book
					when 2
						add_book
					when 3
						edit_book
					when 4
						remove_book
					when 0
						next
				end	
		end
		if(i == 0)
			break
		end
	end
end

while 1 do
	puts "Xin moi lua chon: \n1.Hien thi sach\n2.Dang nhap quan ly thu vien\n0.Dang xuat"
	i = gets.to_i
	case i
		when 1
			list_book
		when 2			
			temp = 0
			until temp == 1 do	
				puts "Xin moi dang nhap de quan ly thu vien:\nMoi nhap ten truy cap: "
				username = gets.to_s
				puts "Moi nhap mat khau: "
				password = gets.to_s
				temp = login username,password
			end
			quan_ly
	end
	if(i == 0)
		break
	end
end



