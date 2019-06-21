symbols = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a

token = []
while token.size < 8
  token << symbols.sample
end

puts token.join
