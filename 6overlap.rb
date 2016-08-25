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
#(inspired by this stack exchange thread http://stackoverflow.com/questions/306316/determine-if-two-rectangles-overlap-each-other)

#cases borrowed from this github project https://github.com/vikingeducation/prep_ruby_challenges/pull/39/commits/ecfb8a74e70062f823b2c3d71436566863396a20


def overlap(rec1, rec2)
  puts "do these two rectangles overlap?"
  if rec1[0][0] <= rec2[0][0] && rec1[1][0] > rec2[0][0] &&
    rec1[0][1] < rec2[1][1] && rec1[1][1] > rec2[0][1] == true
    puts true
  else
    puts false 
  end

end

puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) # true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) # false
puts overlap( [ [0,0],[3,3] ], [ [0,1],[3,4] ] ) # true
puts overlap( [ [0,1],[3,4] ], [ [0,0],[3,3] ] ) # true
puts overlap( [ [1,1],[3,2] ], [ [0,0],[1,4] ] ) # false 