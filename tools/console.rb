require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new(u1, i1)
v2 = Viewer.new(u2, i2)
v3 = Viewer.new(u3, i3)


m1 = Viewer.new(t1)
m2 = Viewer.new(t2)
m3 = Viewer.new(t3)

qi1 = QueueItem.new(v1, m1, r1)
qi2 = QueueItem.new(v2, m2, r2)
qi3 = QueueItem.new(v3, m3, r3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
