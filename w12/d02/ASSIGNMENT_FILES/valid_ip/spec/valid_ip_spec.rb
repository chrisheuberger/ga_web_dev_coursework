require 'spec_helper'
require_relative '../lib/valid_ip'

describe "#valid_ip" do
  it "returns true if input is between '0.0.0.0' and '255.255.255.255'"do
    expect(valid_ip("10.10.10.10")).to eq(true)
  end
  it "returns false if it does not meet those requirements"do
    expect(valid_ip("30.300.3000.3")).to eq(false)
  end
end
