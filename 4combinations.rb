#fun fact, the = operator in python will clone lists
#it turns out it won't in ruby
#so watch out

def combinations(firstlist, secondlist)
  count1 = firstlist.count
  comblist = []
  if firstlist.empty? == true
    puts "first list was empty"
  end
  if secondlist.empty? == true
    puts "second list was empty"
  end
  #while I'm not sure *exaclty* how this functions, it should turn fixnums to strings so we can combine them freely
  firstlist.map!(&:to_s)
  secondlist.map!(&:to_s)
  while count1 != 0
    firstlistitem = firstlist.shift
    dupelist = secondlist.clone
    dupecount = dupelist.count
    while dupecount != 0 
      dupeitem = dupelist.shift
      combitem = firstlistitem + dupeitem
      comblist.push(combitem)
      dupecount -= 1
    end
    count1 -= 1
  end 
  print "#{comblist} \n"
end

combinations([1,2, "pony"], ["green", 7, "asparagus"])
