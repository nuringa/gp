puts 'Калькулятор'
puts 'Первое число:'
first_num = STDIN.gets.to_i

puts 'Второе число:'
second_num = STDIN.gets.to_i

def get_operation_type
  operation = nil
  until operation =~ /[+\-*\/]/
    puts 'Выберите операцию (+ - * /):'
    operation = STDIN.gets.chomp
  end
  operation
end

begin
  result =
    case get_operation_type
    when '+'
      first_num + second_num
    when '-'
      first_num - second_num
    when '*'
      first_num * second_num
    when '/'
      first_num / second_num
    end

rescue ZeroDivisionError => error
  puts "На ноль делить нельзя. " + error.message
end

puts "Результат: #{result}" if result
