require 'spec_helper'

describe Person do
  describe "#to_s" do
    it 'returns formatted name and favorite weather' do
      jon = Person.new({name: 'Jon', weather: 'Stormy'})
      actual = jon.to_s
      expected = 'Jon, Stormy'
      expect(actual).to eq(expected)
    end
  end
end
