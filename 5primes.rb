def is_prime?(number)
  prime = true
  if number < 0
    number = number * -1
  end
  x = 2
  while x < number
    if number % x == 0
      prime = false
    end
    x += 1
  end
  puts "is #{number} prime?"
  puts prime
end

exitvar = false

while exitvar == false
  puts "Check to see if what number is prime?"
  num = gets
  begin
    num = Integer(num)
  rescue ArgumentError
    puts "Non-numerical input caused unexpected failure"
    exit
  end


  is_prime?(num)

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