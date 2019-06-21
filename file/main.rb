current_path = File.dirname(__FILE__)
abort 'Задайте  название файла при запуске' unless ARGV[0]

file_path = current_path + "/data/#{ARGV[0]}"

abort 'Файл не найден.' unless File.exist?(file_path)

file = File.new(file_path, 'r:UTF-8')
content = file.readlines.map { |line| line.chomp }
file.close

def empty_lines(content)
   content.count { |line| line == ''}
end
def last_n_lines(content, n)
  content[-n, n]
end

puts "Открыли файл: #{ARGV[0]}"
puts "Всего строк: #{content.size}"
puts "Пустых строк: #{empty_lines(content)}"
puts "Последние 5 строк файла:"
puts last_n_lines(content, 5)

puts "Последние 7 строк файла:"
puts last_n_lines(content, 7)
