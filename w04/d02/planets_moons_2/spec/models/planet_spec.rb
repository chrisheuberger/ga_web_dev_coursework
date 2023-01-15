require 'spec_helper'

describe Planet do
  it "outputs string when to_s method is called" do
    @planet.to_s.should eql "Earth is a planet with 1 moon(s), capable of sustaining life."
  end
end
