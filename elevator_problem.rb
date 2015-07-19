$floors = 2
$rows   = 2

class Elevator # View
	def starting_position
		puts "Your on Floor: #{$floors - 1} Row:#{$rows - 2}"
	end
	
end

class Building # Model		
	def to_s
		puts " This building has #{$floors} and #{$rows}"
	end
end

class Builder # Controller
	attr_accessor :building, :elevator
	
	def initialize(b_obj, e_obj) 
		@buiding  = b_obj
		@elevator = e_obj
	end
# C.R.U.D - create, read, update and delete
      #Create
	def initiate_building
		b_obj = Building.new 
		puts "#{b_obj.to_s}"
	end
	
	def install_elevator
		e_obj = Elevator.new
		puts ("#{e_obj.starting_position}")
	end
	
	def shift_elevator ( floor,row )
		@floor = floor
		@row   = row
		if (floor <= $floor.to_f) 
			puts ( "You are now on Floor: #{@floor}" )
		end
		if (row <= $rows)
			puts ( "You are now on row #{@row}")
		end
	end
	
	  #Read
	
	
end
=begin
a = Building.new
b = Elevator.new
p = Builder.new(a,b)
puts ("#{p.initiate_building}"  )
puts ("#{p.install_elevator}"   )
puts ("#{p.shift_elevator(2,2)}")
=end
