class DockingStation

	def initialize 
		@bikes = []
	end
	
	def bike_count
		@bikes.size
	end

	def dock(bike)
		@bikes << bike
	end

end