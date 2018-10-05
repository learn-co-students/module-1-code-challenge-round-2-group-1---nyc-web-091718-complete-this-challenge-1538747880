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
  rating = queue_items.map { |qi| qi.rating}
  rating.inject { |sum, el| sum + el } / rating.size
 end

 def self.highest_rated
   QueueItem.all.map {|qi| qi. rating }.max

 end

##Re-factored ratings last minute when given advice-- after being told I passed - pushed up to fast!!
#Fixed it here.

end
