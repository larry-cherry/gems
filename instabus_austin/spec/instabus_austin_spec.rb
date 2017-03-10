require "spec_helper"
require "pry"

RSpec.describe InstabusAustin do
  it "has a version number" do
    expect(InstabusAustin::VERSION).not_to be nil
  end

  describe "Checks Bus Stop Method" do

    it "Recieve a response" do
      expect(InstabusAustin.stops(1,0)).to_not eq(nil)
  	end

  	it "Checks if stop_lat is a float" do 
  		expect(InstabusAustin.stops(1,0).first["stop_lat"]).to be_a Float
  	end

  	it "Checks if stop_lon is a float" do 
  		expect(InstabusAustin.stops(1,0).first["stop_lon"]).to be_a Float
  	end

  end

end
