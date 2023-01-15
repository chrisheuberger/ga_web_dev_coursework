class Submarine
  attr_reader :sailors
  def initialize(color="yellow")
    @color    = color
    @sailors  = [] # Array.new is same.
  end

  def accept_sailor(sailor)
    @sailors << sailor
    #@sailors.push(sailor)
  end

  def torpedo_sailor_cl
    @sailors.delete(@sailors.sample)
  end

  def torpedo_sailor
    @sailors.shuffle!.pop
  end

  # def torpedo_sailor_pg
  #   rider = @sailors.sample
  #   @sailors.delete(rider)
  # end
end