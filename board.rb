class Board
  $bArr = [["1","2","3"],["4","5","6"],["7","8","9"]]
 
  
  def printBoard(move = "none", player = nil)
      
      if move != "none"
        x = 0
        y = 0
      
        for i in 0..$bArr.length-1
          for j in 0..$bArr[i].length-1
            if $bArr[i][j] == move
              x = j
              y = i
            end
          end
        end
      
        $bArr[y][x] = player.getToken
        
      end
      
        for x in 0..$bArr.length-1
            for y in 0..$bArr[x].length-1
              print $bArr[x][y]
              print " "
            end
            print "\n"
        end
        puts
        
      if player != nil
        
          if $bArr[0][0] == player.getToken &&  $bArr[0][1] == player.getToken &&  $bArr[0][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[1][0] == player.getToken &&  $bArr[1][1] == player.getToken &&  $bArr[1][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[2][0] == player.getToken &&  $bArr[2][1] == player.getToken &&  $bArr[2][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[0][0] == player.getToken &&  $bArr[1][0] == player.getToken &&  $bArr[2][0] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[0][1] == player.getToken &&  $bArr[1][1] == player.getToken &&  $bArr[2][1] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[0][2] == player.getToken &&  $bArr[1][2] == player.getToken &&  $bArr[2][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[0][0] == player.getToken &&  $bArr[1][1] == player.getToken &&  $bArr[2][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          elsif $bArr[2][0] == player.getToken &&  $bArr[1][1] == player.getToken &&  $bArr[0][2] == player.getToken
            puts "Hoarry! " + player.getName + " Wins!"
            return true
          else
            return false
          end
          
        
      end
      
     
      
  end 
  
  
end