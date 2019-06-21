puts 'Камень, Ножницы, Бумага.'

def count(user_choice, comp_choice)
  if user_choice == comp_choice
    0
  elsif (user_choice == 0 && comp_choice == 1) ||
        (user_choice == 1 && comp_choice == 2) ||
        (user_choice == 2 && comp_choice == 0) ||
        (user_choice == 3 && comp_choice != 0)
    1
  else
    2
  end
end

puts 'Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага, 3 - огонь'
puts
user_choice = gets.to_i
comp_choice = rand(0..3)
keys = %w(Камень Ножницы Бумага Огонь)

puts "Вы выбрали: #{keys[user_choice]}"
puts "Компьютер выбрал: #{keys[comp_choice]}"

case count(user_choice, comp_choice)
when 0
  puts user_choice == 3 ? 'Всё огонь' : 'Ничья'
when 1
  puts 'Вы победили'
when 2
  puts 'Победил компьютер'
end
