require 'spec_helper'

describe Person do

  describe '#to_s' do
    it 'returns formatted name' do
      lich = Person.new({name: "Lichard", email: "lich@lichmail.com"})
      actual = lich.to_s
      expected = "Lichard (lich@lichmail.com)"
      expect(actual).to eq(expected)
    end
  end



end
