class Movie
  attr_reader :title, :poster_url, :plot
  def initialize(options)
    @title       = options["Title"] ||= "bjork"
    @poster_url  = options.fetch("Poster", "https://s3.amazonaws.com/uploads.hipchat.com/39979/779943/MCqNpLd6BU4fEeE/bjork_and_cat_dancing.gif")
    @plot        = options.fetch("Plot", "dances")

    # @bad_good    = options["bad_good"]  ||= "undefined"
    # @good_good   = options.fetch("good_good", "undefined")
  end

  def to_s
    "#{@title}, #{@poster_url}, #{@plot}"
  end
end
