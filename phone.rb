puts 'Введите номер телефона:'

number = STDIN.gets.chomp

if (number =~ /^[\d*_\-,()+\/\\ ]+$/)
  digit_total = number.scan(/\d+/).join.length
  if (10..18).include?(digit_total)
    puts 'Спасибо!'
  else
    puts "Обычно в номере телефона 10-18 цифр у Вас: #{digit_total}"
  end
else
  puts 'Это не похоже на номер телефона'
end
