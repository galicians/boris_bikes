require_relative 'bike_container'

class Van
	include BikeContainer

	def release(bike,destination)
		bikes.delete(bike)
		destination.dock(bike)
	end



end