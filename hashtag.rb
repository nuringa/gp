puts 'Введите строку с хэштегами:'
user_string = STDIN.gets.chomp

result = user_string.scan(/#[ёа-яa-z0-9_\-]+/i)

puts "Нашли вот такие хэштеги: #{result.join(', ')}" unless result == []
