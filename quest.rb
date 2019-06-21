# Нужно изменить начальные условия в своем квесте (или любой вопрос в середине квеста)
# в зависимости от текущего времени суток. И проверить, что это работает.

puts "Текстовой квест 'Получи премию'"
puts
puts "Вам надо прожить утро так, чтобы все было нормально."
puts

hour = Time.now.hour
if hour == 0..7
  puts 'Доброй ночи! Еще слишком рано, а завтра на работу' \
  'Нужно еще поспать....'
elsif hour == 7
  puts 'Утро. Звонит будильник'
else
  puts 'Обычный день проходит своим чередом. Ты ложишься спать вечером....'
end

puts
puts "Итак, наступило утро, и ты проснулся. Тебе снился классный сон. Но ты его не досмотрел. Ты сейчас..."
puts "1. Заснешь и досмотришь этот сон 2. Встанешь и посмотришь время\n"

choice = gets.to_i

if choice == 1
  puts 'Ты досмотрел этот классный сон. Ты сейчас встанешь и...'
  puts '1. Посмотришь время'
else
end


# Ты досмотрел этот классный сон. Ты сейчас встанешь и...
# Посмотришь время
# Ты поднимаешь телефон и смотришь на часы. 09:13. Ты думаешь: «Черт! Я проспал! Теперь меня уволят!»
# Ты проиграл...

# Встанешь и посмотришь время
# 	Ты поднимаешь телефон и смотришь на часы. 07:24. Ты думаешь: «Фух, не проспал. Мне только к восьми. Но надо торопиться.» Ты сейчас...
# Зайдешь в почту и проверишь её
# Медленный интернет. Просмотр 4 новых писем занял у тебя 8 минут.  Время: 07:32. Ты сейчас...
# Пойдешь позавтракаешь
# Ты хорошо позавтракал. Еда у тебя заняла 10 минут. Время: 07:42. Ты сейчас...
# Пойдешь на работу
# Ты приехал на работу. Поездка затратила 20 минут. Время: 08:14
# Ты проиграл, потому что опоздал на работу.

#           	Пойдешь на работу
# Ты едешь на работу. Ты думаешь: «Черт, я забыл позавтракать. А сегодня суббота, обеда на работе не будет. Я буду ехать мимо МакДональса. Можно зайти и взять с собой пару чизбургеров.» Что ты сделаешь?
# Заеду и куплю еду на вынос.
# Ты зашел в МакДональс и купил 3 чизбургера. На покупку ты потратил 30 минут из-за большой очереди. А дорога от дома до МакДональса — 5 минут. Итого — 35 минут. Время: 07:59.
# Ты проиграл, потому что опоздал на работу.

# Не буду останавливаться
# Ты доехал. Время: 07:34. Ты не опоздал. Молодец.
# Но на работе у тебя заболел живот из-за голода. Тебе стало плохо и ты ушел домой.
# Ты проиграл.



# Пойдешь позавтракаешь
# Ты хорошо позавтракал. Еда у тебя заняла 10 минут. Время: 07:34. Ты сейчас...
# Пойдешь на работу

# Ты приехал на работу. Поездка затратила 20 минут. Время: 07:54. Ты успел.
# Ты заходишь в здание и садишься на своё место.
# Тебе должны сегодня дать премию. Ты...
# Идешь к директору за премией
# Ты пришел к директору и говоришь:
# "Где моя премия?" Вот нахал!-сказал директор-Убирайся! Не будет премии!
# Ты проиграл.

# «Мне хотелось бы внести рац предложение!» Выслушав твои идеи директор приходит в восторг. «Вот твоя премия». И дает тебе 100 тысяч рублей. Победа!






# Сидишь на месте и ждешь, пока тебя позовут
# Вдруг объявляется голос: тебя вызывают к директору.
# Директор: «Вот твоя премия».
# И дает тебе 100 тысяч рублей. Победа!


# Зайдешь в почту и проверишь её
# Медленный интернет. Просмотр 4 новых писем занял у тебя 8 минут. Время: 07:42. Ты сейчас...
# Пойдешь на работу
# Ты приехал на работу. Поездка затратила 20 минут. Время: 08:14
# Ты проиграл, потому что опоздал на работу.


# Пойдешь на работу
