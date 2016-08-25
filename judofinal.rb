def counting(players, countto)
  y = 1
  x = 1
  down = false
  skip = false
  while y != countto
    y += 1

    if down == true
      x -= 1  
      
      if x == 0
        x = players
      end
      
      if skip == true
        x -= 1
        skip = false
      end

      if x == 0
        x = players
      end

    else
      x += 1

      if x == (players + 1)
        x = 1
      end
      
      if skip == true
        x += 1
        skip = false
      end
      
      if x == (players + 1)
        x = 1
      end
    end

    if y % 7 == 0
      if down == true
        down = false
      else
        down = true
      end
    end

    if y % 11 == 0 
      skip = true

    end  
    #puts "on player #{x}  \n on number #{y} \n players is #{players}"
    #test function for debugging. Ignore
  end
  puts "player #{x} finishes counting, on the number #{y}"    
end

counting(10, 100)
counting(23, 1000)