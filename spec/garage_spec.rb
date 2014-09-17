require 'Garage'

# 1 it should have a finite capacity
# it should not accept a bike when full
# it should fix a bike
# it should accept a bike from the van
# it should release the fixed bikes to the van



describe Garage do

	it "should have a finite capacity" do
		garage = Garage.new(:capacity => 30)
		expect(garage).not_to be_full
		bike = Bike.new
		30.times { garage.dock(bike) }
		expect(lambda { garage.dock(bike) }).to raise_error(RuntimeError)
	end

end