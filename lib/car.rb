class Car
	attr_reader :speed

	def initialize
		@speed = 0
	end

	def accelerate(gain)
		@speed += gain
	end
end
