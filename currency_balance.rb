puts 'Бивалютный портфель'

puts 'Сколько у вас рублей?'
rub = gets.to_f.round(2)
puts 'Сколько у вас долларов?'
dollar = gets.to_f.round(2)
puts 'Курс доллара:'
rate = gets.to_f.round(2)

balance = ((dollar - (rub / rate)).abs / 2).round(2)

if (dollar - rub / rate).abs < 0.01
  puts 'Ваш портфель сбалансирован.'
elsif dollar > rub / rate
  puts "Вам надо продать #{balance}$"
else
  puts "Вам надо купить #{balance}$"
end
