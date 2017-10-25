class Book     
    attr_accessor :id, :title,:subject, :author, :publisher, :date, :pages, :copies
    def to_s
    	"ID: #{id}Name: #{title}Subject: #{subject}Author: #{author}Publisher:#{publisher}Date: #{date}Pages: #{pages}Copies: #{copies}\n"
    end

end