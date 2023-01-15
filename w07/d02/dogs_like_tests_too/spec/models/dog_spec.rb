require 'spec_helper'

describe Dog do

  describe "#to_s" do
    it 'returns a formatted name' do
      summer = Dog.new({name: 'Summer', breed: 'Schnauzer'})
      actual = summer.to_s
      expected = "Summer the Schnauzer"
      expect(actual).to eq(expected)
    end
  end

end
