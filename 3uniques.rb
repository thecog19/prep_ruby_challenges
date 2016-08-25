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

uniques([1,5,"frog", 2,1,3,"frog"])

uniques([1,1,1,2,1,1,1])

uniques(["no", "uniques", "here"])