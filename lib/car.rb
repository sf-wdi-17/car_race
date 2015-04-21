# Add Car class here

# define a class called Car
class Car

	attr_accessor :speed

	# creates a car with a set speed of 0
	def initialize() 
		self.speed = 0
	end

	# changes the speed to a specified speed
	def accelerate(to_speed)
		self.speed = to_speed
	end
end
