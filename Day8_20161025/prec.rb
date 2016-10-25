class Template 
	def initialize(name,a)
		@name = name
		@na =a
	end
end

module N
	def foo(x)
	puts x
end
end

class Temp
	include N
end

myname = Template.new("EJ","a")
my = Temp.new()
my.foo("HA")