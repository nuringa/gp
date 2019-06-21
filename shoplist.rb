puts 'Список покупок'
products = %w(молоко картошка хлеб курица чай кофе)
puts

while products.size > 0
  puts 'Нужно купить:'
  puts products.join(', ')

  user_choice = nil
  until products.include?(user_choice)
    puts 'Что купили:'
    user_choice = gets.chomp
  end

  products.delete(user_choice)
end

puts 'Всё купили'
