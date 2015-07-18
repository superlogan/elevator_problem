class Building

		attr_reader :max_floors :max_row
		
		def initialize( max_floors, max_row)
			@max_floors = max_floors
			@max_row    = max_row
		end

		def elevator
			my_elevator = Elevator.new( max_floors, max_row )
		end
end
 =begin
	It occurred to me that a elevator would only exist on a structure
	so having the elevator as a function of the building made sense to me.
	While been atempting to write this way I know this isn't good programming
	because everything get jumbled together and there to many dependecies.
	The approach you should me about initiating the two objects into another class
	has gotten me stuck. I dont know how you can pass objects into another object. or 
	manipulate the parameters once inside the object( or if that's a good approach).
=end	
class Elevator
	def initialize( max_floors, max_row )
		@max_floors = max_floors
		@max_row    = max_row
	end
end
