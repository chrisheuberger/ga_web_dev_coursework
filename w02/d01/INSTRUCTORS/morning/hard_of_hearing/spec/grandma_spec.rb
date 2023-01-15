require_relative "../grandma.rb"

describe Grandma do
  before(:each) do
    @grandma = Grandma.new
  end

  it "is deaf" do
    @grandma.instance_variable_get(:@deaf).should eq true
  end

  describe '.listen' do
    it "it has a parameter 'input' that defaults to an empty string" do
      expect{ @grandma.listen}.to_not raise_error
    end

    it "puts an appropriate message when input is downcase" do
      STDOUT.should_receive(:puts).with("WHAT's THAT? COME AGAIN, SONNY!")
      @grandma.listen("sweet nothings")
    end

    it "puts an appropriate message when input is upcase" do
      STDOUT.should_receive(:puts).with("NO, NOT SINCE 1929!")
      @grandma.listen("THE LOUDNESS")
    end
  end

  describe '.loud_enough?' do
    it "returns true if more capitals than lowercase in a string" do
      @grandma.loud_enough?("CAPItal").should eq true
    end

    it "returns false if more lowercase than capitals in a string" do
      @grandma.loud_enough?("lowerCASE").should eq false
    end
  end

end