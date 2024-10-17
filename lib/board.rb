
class Board 
    attr_accessor :board
  
  def initialize 
    @board = [
      [" "," "," "],
      [" "," "," "],
      [" "," "," "]
        ]
        @board.freeze
  end

  def board_display #Passe le tableau en grille de jeu
    puts"-"*10
    @board.each do |caz|
      puts caz.join(" | ")
      puts"-"*10
    end
  end
end 