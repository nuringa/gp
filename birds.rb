temp = ARGV[0]
season = ARGV[1]

if temp == nil
  puts 'Какая сейчас температура?'
  temp = STDIN.gets.to_i
else
  temp = temp.to_i
end

if season == nil
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = STDIN.gets.to_i
else
  season = season.to_i
end

if (22..30).include?(temp) || ((season == 1) && (15..35).include?(temp))
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются.'
end