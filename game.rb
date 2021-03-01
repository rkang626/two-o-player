class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @active_player = player1
  end

  def run_game
    while @player1.lives > 0 && @player2.lives > 0 do
      # Generate a new question
      question = Question.new
      question.generate_question

      # Ask question
      puts "#{@active_player.name}: #{question.question}"

      # Get answer
      answer = gets.chomp.to_f

      # Check answer and subtract life if inccorect
      if answer == question.answer
        puts "Correct!"
      else
        @active_player.lives -= 1
        puts "Wrong!"
      end

      # Change active player
      if @active_player == @player1
        @active_player = @player2
      else
        @active_player = @player1
      end

      # End turn
      if @player1.lives > 0 && @player2.lives > 0
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        puts "----- NEW TURN -----"
      else
        puts "#{@active_player.name} wins with #{@active_player.lives} remaining lives!"
        puts "----- GAME OVER -----"
      end
    end
  end

end