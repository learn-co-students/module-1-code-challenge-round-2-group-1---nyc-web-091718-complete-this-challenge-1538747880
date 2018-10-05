class QueueItem
  # + `QueueItem#viewer`
  #   + returns the viewer associated with this `QueueItem`
  # + `QueueItem#movie`
  #   + returns the movie associated with this `QueueItem`
  # + `QueueItem#rating`
  #   + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`
  attr_accessor :rating
  attr_reader :viewer, :movie

  @@all = []

  # + `QueueItem.all`
  #   + returns an array of all `QueueItem`s
  def self.all
    @@all
  end

  def initialize(rating=nil, viewer, movie)
    @rating = rating
    @viewer = viewer
    @movie = movie

    self.class.all << self
  end

end
