require_relative 'car'

# Add Race class here

class CarRace #because it is a car specific race

	attr_accessor :cars

	
	def initialize()
		self.cars = [] # an empty array of cars (attr_accesor)
		car1 = Car.new # when initializes it creates a new object car
		car2 = Car.new # when initializes it creates a new object car
		car3 = Car.new # when initializes it creates a new object car

		#car objects is set to a random speed 
		car1.accelerate(Random.rand(100))
		car2.accelerate(Random.rand(100))
		car3.accelerate(Random.rand(100))
		
		# objects are then put into the empty array
		self.cars << car1
		self.cars << car2
		self.cars << car3
	end

	# method winner that iterates through an array and checks the highest speed
	def winner
		# iterates through all the cars in the race
		# return cars.sort { |c| c.speed }.last
		max_speed = 0
		winner = nil
		self.cars.each do |c| 
			if c.speed > max_speed
				max_speed = c.speed
				winner = c
			end
		end
		return winner
	end

	# method loser that iterates through an array and checks the lowest speed
	def loser
		# iterrates through all the cars in the race
		# return cars.sort { |c| c.speed }.first
		max_speed = 100
		loser = nil
		self.cars.each do |c|
			if c.speed < max_speed
				max_speed = c.speed
				loser = c
		    end
		end
		return loser
	end	
end

# creates an object from class CarRace
my_race = CarRace.new

# prints my_race.cars
p my_race.winner
p my_race.loser

