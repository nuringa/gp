def declension(number, krokodil, krokodila, krokodilov)
  if number == nil || !number.is_a?(Numeric)
    number = 0
  end

  if (11..14).include?(number)
    return krokodilov
  end

  if (11..14).include?(number % 100)
    return krokodilov
  end

  remainder = number % 10
  if (remainder == 1)
    return krokodil
  end

  if (remainder >= 2 && remainder <= 4)
    return krokodila
  end

  if (remainder >= 5 && remainder <= 9 || remainder == 0)
    return krokodilov
  end
end

skolko = ARGV[0].to_i

# Выводим первую строчку детской считалки из романа Агаты Кристи
puts "#{skolko} #{declension(skolko, "негритёнок", "негритёнка", "негритят")} " \
  "#{declension(skolko, "пошел", "пошли", "пошли")} купаться в море!"
