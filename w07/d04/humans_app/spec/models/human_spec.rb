require 'spec_helper'

describe Human do

  describe '#to_s' do
    it 'returns formatted name' do
      gark = Human.new({name: 'Gark', email: 'gark@garkmail.com'})
      actual = gark.to_s
      expected = 'Gark (gark@garkmail.com)'
      expect(actual).to eq(expected)
    end
  end

end
