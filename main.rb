load 'game.rb'
load 'player.rb'
load 'question.rb'

g = Game.new
p1 = Player.new
p2 = Player.new

puts "Welcome to MATH GAME. Two players will answer very easy questions until you fail three times, embarrassing yourself forever."
continue = true
while(continue)
  if g.active_player == 1
    g.active_player = 2
    puts "Player 1, your question is:"
    q = Question.new
    q.print_question
    if q.check_answer(gets.chomp.to_i)
      puts "correct"
    else
      puts "WRONG"
      p1.lives -= 1
      puts "Player 1 has #{p1.lives} lives remaining"
      if p1.lives < 1
        continue = false
      end
    end
  else
    g.active_player = 1
    puts "Player 2, your question is:"
    q = Question.new
    q.print_question
    if q.check_answer(gets.chomp.to_i)
      puts "correct"
    else
      puts "WRONG"
      p2.lives -= 1
      puts "Player 2 has #{p2.lives} lives remaining"
      if p2.lives < 1
        continue = false
      end
    end
  end

  if !continue
    puts "----GAME OVER----"
    if p1.lives < 1
      puts "Player 1 now lives in ETERNAL SHAME"
    else
      puts "Player 2 now lives in ETERNAL SHAME"
    end
  end

end