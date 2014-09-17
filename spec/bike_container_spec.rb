require './lib/bike_container'
require './lib/docking_station'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }
	let(:station) { DockingStation.new(:capacity => 123) }

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(123)
	end

	it "should deliver all the fixed bikes" do
		van = Van.new
		5.times {van.dock(bike)}
		expect(van.bike_count).to eq(5)
		4.times {station.dock(bike.break!)}
		expect(station.bike_count).to eq(4)		# why is it failing with broken_bikes.size???
		van.deliver(station)
		expect(station)

	end
	
end