person = {
  name: 'Станислав',
  age: 33,
  text: 'Желаем успехов!'
}

def happy_birthday(person)
  puts "Дорогой #{person[:name]},"
  puts
  puts 'Поздравляем Вас с днём рождения!'
  puts "Вам сегодня исполняется аж #{person[:age]}!"
  puts
  puts person[:text]
end

happy_birthday(person)
