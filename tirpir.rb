numbers = (1..100).map do |num|
  if num % 3 == 0 && num % 5 == 0
    'тыры-пыры'
  elsif num % 3 == 0
    'тыры'
  elsif num % 5 == 0
    'пыры'
  else
    num
  end
end

puts numbers.join(', ')
