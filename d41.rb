class Employee
		attr_reader :eid,:name,:salary #getter function
		attr_writer :eid,:name,:salary #setter function def name=(aname)
		#attr_accessor both reader & writer
	def initialize(eid=nil,name=nil,salary=10)
		self.eid=eid
		self.name=name
		self.salary=salary #this ~ self.
	end
	def input
		puts "enter eid\n"
		@eid=gets.chomp.to_i 
		puts "enter name \n"
		 @name=gets
		puts "enter salary \n"
		 @salary=gets.chomp.to_f
	end
	def output
		puts "Employee Id :#{@eid}\tName:#{@name}\tSalary:#{@salary}\n"
	end
end
class PT<Employee
	attr_writer :bonus
	def initialize(eid=nil,name=nil,salary=10,bonus=4000.00)
		super(eid,name,salary) #initializing parent constructors
		self.bonus=bonus
	end
	def to_s
		puts "Employee Id :#{@eid}\tName:#{@name}\tSalary:#{@salary+@bonus}\n"
	end
end
class FT<Employee
#	attr_writer :pf
attr_reader :pf	 
# is it neccessary to create both getter and setter fns: 
	def initialize(eid=nil,name=nil,salary=10,bonus=4000.00)
		super(eid,name,salary)
		self.pf=bonus
	end
	
	#def pf=(pf) #setter function
	#	@pf=pf
	#end
	def pf #getter function alone not working 
		return @pf
	end
	
	def to_s
		puts "Employee Id :#{@eid}\tName:#{@name}\tSalary:#{@salary+@pf}\n"
	end
end
a1=Employee.new
puts a1.output
a2=FT.new(1,"dinesh",200)
puts a2	
  puts a2.pf
puts a2
a=PT.new
a.input
puts a
	

		
	
