require 'cyrillizer'

puts 'Введите фразу для транслитерации:'

phrase = STDIN.gets.encode("UTF-8").chomp

if phrase.to_cyr  == phrase
  puts phrase.to_lat
else
  puts phrase.to_cyr
end
