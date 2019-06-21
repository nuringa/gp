puts "Введите строку, которую надо проверить на «палиндромность»:"
original_string = STDIN.gets.encode("UTF-8").chomp

reg_symbols = /[^[:word:]]+/
stripped_string = original_string.downcase.delete(' _').gsub(reg_symbols, '')

reverse_string = stripped_string.reverse

if reverse_string == stripped_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end
