def power(base, exponent)
  newbase = base
  times = 1
  while times != exponent   
    newbase = newbase * base
    times += 1
  end
  puts newbase
end

puts "What is your base number?"
x = gets
puts "what is your exponent?"
y = gets
begin
  y = Integer(y)
  x = Integer(x)
rescue ArgumentError
  puts "Non-numerical input caused unexpected failure. Please use only positive integers"
  exit
end
if y <= 0
  puts "We do not take negative exponents, or zero at this time"
  puts "Feel free to try again"
  exit
end
power(x,y)
