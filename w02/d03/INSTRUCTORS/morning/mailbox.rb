class Mailbox
  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards.push(postcard)
    # @postcards << postcard
  end

  def to_s
    "We have like #{@postcards.length} postcards."
  end
end

