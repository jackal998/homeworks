class Village # < ParentClass

	attr_accessor :leader
	attr_accessor :name #(attr_reader+writer)

	def initialize(name="AlphaCamp", leader="Bernard")
		@v_name = name
		@leader = leader	
	end

	def introduction
		"#{self.leader} :#{@v_name} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas aliquam, reprehenderit tempora!"
		# secret
	end
	private
	def secret
		"Lorem ipsum dolor."
		
	end	
end

class Uchiha < Village
	attr_reader :name
	attr_accessor :age
	def initialize(name,age)
		@name=name
		@age=age
	end
end

# v1=Village.new()
# v2=Village.new("Milk","Aga")
# puts v1.name
# v1.name = "BetaCamp"
# puts v1.name
# # puts v1.secret
# puts v1.introduction

p1 = Uchiha.new("鼬",15)
puts p1.name
puts p1.introduction