require_relative 'bike_container'

class Garage

include BikeContainer
	
	DEFAULT_CAPACITY = 30

	def initialize(options = {}) 
		self.capacity = options.fetch(:capacity, capacity)
	end

end