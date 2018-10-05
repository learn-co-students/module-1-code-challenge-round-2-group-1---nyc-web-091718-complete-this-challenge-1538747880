class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|qi| qi.viewer == self}
  end

  def queue_movies
    queue_items.map { |qi| qi.movie }
  end

 def add_movie_to_queue(movie)
   QueueItem.new(title, movie, self)
 end

  def rate_movie(movie, rating)
    QueueItem.new(title, movie, self, rating)
  end

end ###
