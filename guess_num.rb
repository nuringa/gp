num = rand(0..15)

puts 'Загадано число от 0 до 15, отгадайте какое?'


def num_compare(num)
  guess = gets.to_i

  if guess == num
    puts 'Ура, вы выиграли!'
    exit
  else
    if guess > num
      if (guess - num) > 2
        puts 'Холодно (нужно меньше)'
      else
        puts 'Тепло (нужно меньше)'
      end
    else
      if (guess - num).abs > 2
        puts 'Холодно (нужно больше)'
      else
        puts 'Тепло (нужно больше)'
      end
    end
  end
end

3.times { num_compare(num) }

puts "Вы проиграли! Загадано число #{num}"

