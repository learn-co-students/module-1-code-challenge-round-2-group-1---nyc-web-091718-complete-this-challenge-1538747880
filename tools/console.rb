require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


v1= Viewer.new("v1")
v2= Viewer.new("v2")
v3= Viewer.new("v3")

m1= Movie.new("m1")
m2= Movie.new("m2")
m3= Movie.new("m3")
m4= Movie.new("m4")


q1 = QueueItem.new("q1", m1, v1, 5)
q2 = QueueItem.new("q1", m1, v2, 5)
q3 = QueueItem.new("q1", m3, v2, 5)
q4 = QueueItem.new("q1", m4, v3, 5)
# m4 code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
