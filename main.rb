load 'game.rb'
load 'player.rb'
load 'question.rb'

g = Game.new
players = [Player.new, Player.new]

puts "Welcome to MATH GAME. Two players will answer very easy questions until one of you fails three times, embarrassing yourself forever."
continue = true
while(continue)
  
  puts "Player #{g.active_player+1}, your question is:"
  q = Question.new
  q.print_question
  if q.check_answer(gets.chomp.to_i)
    puts "correct"
  else
    puts "WRONG"
    players[g.active_player].lives -= 1
    puts "Player #{g.active_player+1} has #{players[g.active_player].lives} lives remaining"
    if players[g.active_player].lives < 1
      continue = false
    end
  end

  if !continue
    puts "----GAME OVER----"
    puts "Player #{g.active_player+1} now lives in ETERNAL SHAME"
  end

  g.active_player = (g.active_player + 1)%2
end