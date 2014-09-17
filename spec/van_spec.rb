
require 'Van'



# 1 should have a finite capacity
# 2 should not accept a bike when full
# 3 should release a bike to the docking station
# 4 should release a bike to the garage
# 5 should not accept a bike when full
# should go to the dock station when it’s called
# should go to the garage when number of broken bikes in van 
# should not accept a no broken bike from the station
# should not accept a broken bike from the garage


describe Van do
	let(:van) { van = Van.new }
	let(:bike) { bike = Bike.new }
	let(:station) { station = DockingStation.new }

	def fill_van(van)
		10.times {van.dock(Bike.new)}
	end

	it "should have a finite capacity" do
		expect(van).not_to be_full
		fill_van(van)
		expect(van.capacity).to eq(10)
	end

	it "should not accept a bike when full" do
		expect(van).not_to be_full
		fill_van(van)
		expect(lambda { van.dock(bike) }).to raise_error(RuntimeError)
	end

	it "should release a bike to the docking station" do
		van.dock(bike)
		van.release(bike,station)
		expect(van.bike_count).to eq(0)
		expect(station.bike_count).to eq(1)
	end

	it 'should release a bike to the garage' do
		van.dock(bike)
		garage = Garage.new
		van.release(bike,garage)
		expect(van.bike_count).to eq(0)
		expect(garage.bike_count).to eq(1)
	end



	
end



























