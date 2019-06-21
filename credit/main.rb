require_relative 'credit_application'

puts 'ЗАЯВКА НА КРЕДИТ'

puts 'Ваш возраст:'
age = STDIN.gets.to_i

puts 'Ваш пол:'
puts 'Введите М или Ж'
gender = STDIN.gets.chomp

puts 'Ваш доход:'
income = STDIN.gets.to_i

puts 'Есть ли у вас кредитная история: Да или Нет'
credit_story = STDIN.gets.chomp

puts 'Какую сумму вы запрашиваете?'
sum = gets.to_i

application = CreditApplication.new(age, gender, income, credit_story, sum)

application_result = if application.approved?
  "Вам одобрен кредит на сумму #{application.sum}"
else
  'Ваша заявка на кредит отклонена.'
end

puts application_result
