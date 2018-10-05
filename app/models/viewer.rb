class Viewer
  attr_accessor :username, :items

  @@all = []

  def initialize(username, items)
    @username = username
    @items = items

    @@all<<self
    #self.class.all << self
  end

  def self.all
    @@all
  end
  # def queue_items
  #   @items = []
  # end

  def add_movie_to_queue(movie)
    # add movie to the  viewers watchlist
  end



  def

end
