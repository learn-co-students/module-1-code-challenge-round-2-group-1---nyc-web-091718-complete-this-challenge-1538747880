class Movie
  attr_accessor :title

  @@all = []

  # + `Movie.all`
  #   + returns an array of all `Movie`
  def self.all
    @@all
  end

  # + `Movie.highest_rated`
  #   + returns the instance of `Movie` with the highest average rating
  def self.highest_rated
    highest_avg_rating = 0
    highest_rated_movie = nil
    self.all.each do |movie|
      if movie.average_rating > highest_avg_rating
        highest_avg_rating = movie.average_rating
        highest_rated_movie = movie
      end
    end
    highest_rated_movie
  end

  def initialize(title)
    @title = title
    self.class.all << self
  end


  # + `Movie#queue_items`
  #   + returns an array of all the `QueueItem` instances that contain this movie
  def queue_items
    QueueItem.all.select do |qi|
      qi.movie == self
    end
  end

  # + `Movie#viewers`
  #   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
  def viewers
    my_queue_items = QueueItem.all.select do |qi|
      qi.movie == self
    end

    my_queue_items.map do |qi|
      qi.viewer
    end
  end

  # + `Movie#average_rating`
  #   + returns the average of all ratings for this instance of `Movie`
  def average_rating
    my_movies = QueueItem.all.select do |qi|
      qi.movie == self
    end

    sum = 0
    my_movies.each do |movie|
      sum += movie.rating
    end
    sum / my_movies.count
  end

end
