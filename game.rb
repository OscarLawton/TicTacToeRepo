require_relative "board.rb"
class Game
  @@realTurn = 1
  def getMove(player, board)
    check = true
    while check
      
      puts "[" + player.getToken + "] " + player.getName + ", please enter a number from 1 to 9: "
      
      move = gets.chomp
      puts
      if @@realTurn > 8
        puts "No Winner! It's draw!"
        return "q"
      elsif move == "1" || move == "2" || move == "3" || move == "4" || move == "5" || move == "6" || move == "7" || move == "8" || move == "9" || move == "q"
        check = false
       
        @@realTurn += 1
        return move
      end
      board.printBoard
      puts
    end
  end
  
end