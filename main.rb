require_relative "board.rb"
require_relative "player.rb"
require_relative "game.rb"
myBoard = Board.new
myBoard.printBoard


player1 = Player.new
player2 = Player.new
check = false
while !check
  
  if player1.getName == player2.getName
    puts "It looks like you entered the same name as player1."
    puts "Try again, enter a name for player2: "
    player2.setName(gets.strip.capitalize)
    puts 
    check = false
  elsif player1.getToken == player2.getToken
    puts "You've entered the same token charcter as player1."
    puts "Try again, enter a single character token for player2: "
    player2.setToken(gets.chomp)
    puts
    check = false
  else
    check = true
  end
  
end


quit = false
move = "none"
game = Game.new

turn = 1
myBoard.printBoard
puts

  while quit == false
    
    if turn % 2 == 0
      move = game.getMove player2, myBoard
     
      if move == "q"
        quit = true
      else
        quit = myBoard.printBoard(move, player2)
        puts
      end
      
    else
      move = game.getMove player1, myBoard
     
      if move == "q"
        quit = true
      else
        quit = myBoard.printBoard(move, player1)
        puts 
      end
      
    end
    
    turn += 1
  end
  
