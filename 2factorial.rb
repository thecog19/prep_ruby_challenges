def factorial(number)
  x = 1
  total = 1 
  while x < (number + 1)
    total = total*x
    x += 1
  end
  puts total
end

exitvar = false
while exitvar == false
  puts "What is your base number?"
  num = gets
  begin
    num = Integer(num)
  rescue ArgumentError
    puts "Non-numerical input caused unexpected failure"
    exit
  end
  if num < 0
    puts "Negative factorials are undefined!"
  else
    factorial(num)
  end
  
  puts "would you like to go again? Y/n"
  input = gets.chomp
  print input
  if input == "Y"
    puts "\n"
    puts "here we go!"
  else
    puts "\n"
    puts "Alright, see you later!"
    exit
  end

end