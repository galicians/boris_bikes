require_relative 'bike_container'

class DockingStation

	include BikeContainer

	DEFAULT_CAPACITY = 10

	def initialize(options = {}) 
		self.capacity = options.fetch(:capacity, capacity)
	end

	


end