puts 'Какая у вас на руках валюта?
  1. Рубли
  2. Доллары'
choice = gets.to_i

puts 'Сколько сейчас стоит 1 доллар в рублях?'
rate = gets.chomp.to_f

if choice == 1
  puts 'Сколько  у вас рублей?'
  rubl = gets.chomp.to_f

  dollar = (rubl / rate).round(2)

  puts "Ваши запасы равны: #{dollar} $"
else
  puts 'Сколько  у вас долларов?'
  dollar = gets.chomp.to_f

  rubl = (dollar * rate).round(2)

  puts "Ваши запасы равны: #{rubl} рублей"
end
