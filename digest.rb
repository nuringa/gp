# Введите слово или фразу для шифрования:
# Хороший программист

# Каким способом зашифровать:
# 1. MD5
# 2. SHA1
# 1

# Вот что получилось:
# 9136d475e0fbf87e4fcdc9cb6c38ccc4
require 'digest'

puts 'Введите слово или фразу для шифрования:'
phrase = ''
phrase = STDIN.gets.chomp until phrase.length > 0

puts 'Каким способом зашифровать:'
puts '1. MD5   2. SHA1'
choice = STDIN.gets.to_i until choice == 1 || choice == 2

choice == 1 ? Digest::MD5.hexdigest(phrase) : Digest::SHA1.hexdigest(phrase)
