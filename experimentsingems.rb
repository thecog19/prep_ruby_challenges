#we tried to brute force this. Suffice it to say, it did not work
#we're now gonna try the more "elegant" solution
#that is to see if the rectangles are *not* overlapping
#and if they aren't not overlapping, then they must overlap. 

#it seems like there are four conditions where this happens.
# 1, one of the rectangles is above the other
# 2, one of the rectangles is to the left of the other
# 3 one of the rectangles is to the right of the other
# 4 one of the rectangles is below the other
# however, 1 and 4 and 2 and 3 are analogous if we check values before starting. 
require "geometry"
def overlap(rec1, rec2)
  rec1c1 = rec1.shift
  rec1c2 = rec1.shift
  rec2c1 = rec2.shift
  rec2c2 = rec2.shift
  rectangle1 = Geometry::Rectangle.new rec1c1, rec1c2
  rectangle2 = Geometry::Rectangle.new rec2c1, rec2c2
  over = rectangle1.overlaps?(rectangle2)
  puts over
end

overlap([[0,0],[4,4]],[[1,1],[2,3]])