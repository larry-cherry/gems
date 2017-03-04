require "spec_helper"

RSpec.describe InstabusAustin do
  it "has a version number" do
    expect(InstabusAustin::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(InstabusAustin.stops(1,0)).to_not eq(nil)
  end
end
