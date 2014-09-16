require 'bike'

describe Bike do
	
	it "should not be broken when I create an object" do
		bike = Bike.new
		expect(bike).not_to be_broken
	end

	it "should break at some point" do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end
end