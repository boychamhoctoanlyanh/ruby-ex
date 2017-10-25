class Person     
    attr_accessor :ten, :namsinh,:gioitinh, :quequan
    def to_s
        "Ten: #{ten}Nam sinh: #{namsinh}Gioi tinh: #{gioitinh}Que quan: #{quequan}\n"
    end
end
f = File.open('ex3.json', 'w')
for i in 0..5 do
    person=Person.new
    puts "Nhap: "
    puts "Ten: "
    person.ten=gets.to_s
    puts "Nam sinh: "
    person.namsinh=gets.to_i
    puts "Gioi tinh: "
    person.gioitinh=gets.to_s
    puts "Que quan: "
    person.quequan=gets.to_s
    f.puts person.ten
    f.puts person.namsinh
    f.puts person.gioitinh
    f.puts person.quequan
end
f.close


file = 'ex3.json' 

temp=0
person=Person.new
File.readlines(file).each do |line|    
    temp=temp+1
    if(temp==1)
        person.ten=String.new
        person.ten=line
    elsif(temp==2)
        person.namsinh=0
        person.namsinh=line
    elsif(temp==3)
        person.gioitinh=String.new
        person.gioitinh=line
    elsif(temp==4)
        person.quequan=String.new
        person.quequan=line
        temp=0
        puts person.to_s
    end    
end
