class QueueItem
  attr_accessor :title, :movie, :viewer

  @@all = []

  def initialize(title, movie, viewer, rating)
    @title = title
    @movie = movie
    @viewer = viewer
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end

end
