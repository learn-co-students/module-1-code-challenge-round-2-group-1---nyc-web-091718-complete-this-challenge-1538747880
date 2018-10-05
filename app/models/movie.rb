class Movie
  attr_reader :title
  attr_accessor :rating

  @@all = []

  def initialize(title, rating)
    @title = title
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end


  def queue_items
    QueueItem.all.select { |qi| qi.movie == self}
 end

 def viewers
   queue_items.map { |qi| qi.viewer}
 end


 def average_rating
  rating = @@all.map { |m| m.rating}
  rating.inject { |sum, el| sum + el } / rating.size
 end

 def self.highest_rated
   rate = self.all.map { |m| m.rating}.max 

 end


end
