class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize(options = {}) 
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end
	
	def bike_count
		@bikes.size
	end

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def full?
		@bikes.any?
	end

end