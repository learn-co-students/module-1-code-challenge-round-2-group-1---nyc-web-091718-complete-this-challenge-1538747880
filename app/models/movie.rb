class Movie
  attr_accessor :title,  :viewers

  @@all = []

  def initialize(title, viewers)
    @title = title
    @viewers = viewers



    @@all<<self
    #self.class.all << self
  end

  def self.all
    @@all
  end

  def average_rating

  end

  def highest_rated
  Movie.all.find do |high|
    high  =
    # method on the class
end
