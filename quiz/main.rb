current_path = File.dirname(__FILE__) + '/data/'

unless File.exist?(current_path + 'questions.txt') && File.exist?(current_path + 'answers.txt')
  abort 'Файлы викторины не найдены'
end

def read_file(path)
  file = File.readlines(path)
  file.map(&:chomp)
end

questions = read_file(current_path + 'questions.txt')
answers = read_file(current_path + 'answers.txt')
correct_answers = 0

puts 'Мини-викторина знатоков русского языка'

questions.each_with_index do |question, number|
  puts question
  user_answer = STDIN.gets.chomp
  if answers[number] == user_answer
    puts 'Это верный ответ'
    correct_answers += 1
  else
    puts "Неверно! Правильный ответ: #{answers[number]}"
  end
end

puts "Викторина закончена! У Вас #{correct_answers} правильных ответа из #{answers.size}"
