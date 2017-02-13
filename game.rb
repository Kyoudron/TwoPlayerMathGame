require_relative 'player'
require_relative 'numbermaker'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")



def player_turn(player)
  question =  Question.new
  puts "What is #{question.random_number1} plus #{question.random_number2}?"

  player_guess = gets.chomp

  if (player_guess.to_i == (question.random_number1 + question.random_number2))
    puts "Correct Answer!"
  else
    puts "Wrong Answer!"
    player.wrong
  end


end

loop do
  player_turn(player1)
  puts "#{player1.name} has #{player1.life}/3 and #{player2.name} has #{player2.life}/3"
  break puts "Player 2 wins with a final score of #{player2.life}/3" if(player1.lose)

  player_turn(player2)
  puts "#{player1.name} has #{player1.life}/3 and #{player2.name} has #{player2.life}/3"

  break puts "Player 1 wins with a final score of #{player1.life}/3" if(player2.lose)

  puts "------ NEW TURN ------"
end
  puts "------ GAME OVER ------"
  puts "Good bye!"
