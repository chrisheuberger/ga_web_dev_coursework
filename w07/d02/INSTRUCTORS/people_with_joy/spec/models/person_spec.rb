require 'spec_helper'

describe Person do
  describe "#to_s" do
    it 'returns formated name' do
      lich = Person.new({name: 'Lichard', email: 'lich@glichmail.com'})
      actual = lich.to_s
      expected = 'Lichard (lich@glichmail.com)'
      expect(actual).to eq(expected)
    end
  end
end
