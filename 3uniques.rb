def uniques(list)
  verlist = []
  holder = nil
  while list.empty? == false
    holder = list.shift
    if verlist.include?(holder) == true
   else
     verlist.push(holder)
    end
  end
  print "\n #{verlist} \n"
end

uniques(["hi", "hi", "ho", "hei", 1])