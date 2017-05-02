class Game


  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def game_method()
    if @player1 == @player2 then return "draw!"
    elsif ((@player1 == "rock") && (@player2 == "scissors")) || ((@player1 == "scissors") && (@player2 == "paper")) || ((@player1 == "paper") && (@player2 == "rock")) then return "player1 wins!" 
    else "player2 wins!"
    end   
  end

  # def game_method()
  #   @object1 = params[:object1].to_s()
  #   @object2 =params[:object2].to_s()  
  #   if object1 == object2 then return "draw!"
  #   elsif ((object1 == "rock") && (object2 == "scissors")) || ((object1 == "scissors") && (object2 == "paper")) || ((object1 == "paper") && (object2 == "rock")) then return " #{object1} wins!" 
  #   else "#{object2} wins!"
  #   end
end