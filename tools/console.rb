require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Viewer1")
v2 = Viewer.new("Viewer2")
v3 = Viewer.new("Viewer3")
v4 = Viewer.new("Viewer4")
v5 = Viewer.new("Viewer5")

m1 = Movie.new("Movie1")
m2 = Movie.new("Movie2")
m3 = Movie.new("Movie3")
m4 = Movie.new("Movie4")
m5 = Movie.new("Movie5")

qi1 = QueueItem.new(5, v1, m1)
qi2 = QueueItem.new(4, v1, m2)
qi3 = QueueItem.new(3, v2, m2)
qi4 = QueueItem.new(2, v3, m4)
qi5 = QueueItem.new(1, v3, m5)
qi6 = QueueItem.new(5, v3, m1)
qi7 = QueueItem.new(4, v4, m2)
qi8 = QueueItem.new(3, v4, m4)
qi9 = QueueItem.new(2, v5, m3)
qi10 = QueueItem.new(1, v5, m5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
