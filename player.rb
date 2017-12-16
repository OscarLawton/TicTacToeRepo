class Player
  
  @@playerCount = 0

  
   @name = ""
  @token = ""
  
  def initialize
    
    name = ""
    token = ""
    @@playerCount += 1
   
    while name.length <= 0 
      puts "Enter Player" + @@playerCount.to_s + "'s name: "
      name = gets.strip.capitalize
      puts
    end
    
    @name = name
    
    while token.length > 1 || token.length == 0
      puts "Select a single character for " + @name + "'s token: "
      token = gets.chomp
      puts
    end
 
    
   
    @token = token
    
    
  end
  
  def setName name
    @name = name
  end
 
  def setToken token
    @token = token
  end
  
  def getName
    @name
  end
  
  def getToken
    @token
  end
  
  def self.getPlayerCount
    @@playerCount
  end
end