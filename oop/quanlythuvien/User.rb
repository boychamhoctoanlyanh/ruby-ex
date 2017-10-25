class User
    attr_accessor :id, :username,:password
    def to_s
    	"ID: #{id}Username: #{username}Password: #{password}\n"
    end
end
