PLAYERS = %w[Fel Japonês Petrillo Ricardo Pão Lorenzo].freeze
matches = []
0.upto(PLAYERS.size - 1) do |i|
  (i + 1).upto(PLAYERS.size - 1) do |j|
    matches << [i, j].shuffle
  end
end
matches.shuffle!
matches.each do |player_a, _player_b|
  puts(PLAYERS[player_a]).to_s
end
1.upto(5) { puts '------' }
matches.each do |_player_a, player_b|
  puts(PLAYERS[player_b]).to_s
end
