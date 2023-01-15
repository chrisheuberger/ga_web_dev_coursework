require 'spec_helper'

describe CheckIn do
  it 'has a check-in time' do
    time = Time.now.utc
    ci = CheckIn.new time: time
    expect(ci.time).to eq time
  end


end
