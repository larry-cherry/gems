require "spec_helper"

RSpec.describe HelloWord do
  it "has a version number" do
    expect(HelloWord::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
