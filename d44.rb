class Book
	#attr_reader :title,:author #a.methods,"string".methods "! --- it effect the orginial value"
	attr_writer :title,:author
	#attr_accessor :title,:author
	def initialize (aTitle=nil,aAuthor=nil)
		@title=aTitle
		@author=aAuthor
		@price=1000
	end
	'''def title=(aTitle)
		@title=aTitle #writer
	end'''
	def display
		puts @title
		puts @author
		puts @price
	end
	def to_s
	"parent class to_s  #{@title} ......#{@author}"
	end
end

b2=Book.new("abc","def")
b2.display
b1=Book.new
b1.title="csrd"
b1.display
#puts b1.methods#it displays all the methods(to_s to convert into a string) in class
puts b2 #is a(inhe),has a(!)
