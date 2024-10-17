
class Game 
  attr_accessor :board

  def initialize(joueur1, joueur2)
    @board = Board.new  
    @current = joueur1  
    @nb_tour = 0
  end


  def update_display(joueur1, joueur2) 
    
    @current = joueur1
    @board
    
    while @nb_tour != 9
      puts "#{@current.name}, choisis une position :"
      print "> "
      choix = gets.chomp.downcase
      puts "  "
        if choix[0] == "a"
          chiffre = choix[1].to_i
          @board.board[0][chiffre - 1] = @current.symbole
        elsif choix[0] == "b"
          chiffre = choix[1].to_i
          @board.board[1][chiffre - 1] = @current.symbole
        elsif choix[0] == "c"
          chiffre = choix[1].to_i
          @board.board[2][chiffre - 1] = @current.symbole
        else
          puts "Position invalide !"
          next
        end
      
      @board.board_display
      @nb_tour += 1
      if @nb_tour == 9 
        game_nil
      elsif verif
        puts "Partie terminée #{@current.name} a gagné !"
      break 
      end
      @current = (@current == joueur1) ? joueur2 : joueur1
    end
  end

  def verif
    if @board.board[0][0] == "X" && @board.board[0][1] == "X" && @board.board[0][2] == "X" # 1er ligne
      return true
    end
    if @board.board[1][0] == "X" && @board.board[1][1] == "X" && @board.board[1][2] == "X" # 2ieme ligne
      return true
    end
    if @board.board[2][0] == "X" && @board.board[2][1] == "X" && @board.board[2][2] == "X" # 3ieme ligne 
      return true
    end
    if @board.board[0][0] == "X" && @board.board[1][0] == "X" && @board.board[2][0] == "X" # 1er colonne
      return true
    end
    if @board.board[0][1] == "X" && @board.board[1][1] == "X" && @board.board[2][1] == "X" # 2ieme colonne
      return true
    end
    if @board.board[0][2] == "X" && @board.board[1][2] == "X" && @board.board[2][2] == "X" # 3ieme colonne
      return true
    end
    if @board.board[0][0] == "X" && @board.board[1][1] == "X" && @board.board[2][2] == "X" #diagonal G/D
      return true
    end
    if @board.board[0][2] == "X" && @board.board[1][1] == "X" && @board.board[2][0] == "X" #diagonal D/G
      return true
    end
    if @board.board[0][0] == "O" && @board.board[0][1] == "O" && @board.board[0][2] == "O"# 1er ligne
      return true
    end
    if @board.board[1][0] == "O" && @board.board[1][1] == "O" && @board.board[1][2] == "O"# 2ieme ligne
      return true
    end
    if @board.board[2][0] == "O" && @board.board[2][1] == "O" && @board.board[2][2] == "O"# 3ieme ligne 
      return true
    end
    if @board.board[0][0] == "O" && @board.board[1][1] == "O" && @board.board[2][2] == "O" #diagonal G/D
      return true
    end
    if @board.board[0][2] == "O" && @board.board[1][1] == "O" && @board.board[2][0] == "O" #diagonal D/G
      return true
    end
    if @board.board[0][0] == "O" && @board.board[1][0] == "O" && @board.board[2][0] == "O" # 1er colonne
      return true
    end
    if @board.board[0][1] == "O" && @board.board[1][1] == "O" && @board.board[2][1] == "O" # 2ieme colonne
      return true
    end
    if @board.board[0][2] == "O" && @board.board[1][2] == "O" && @board.board[2][2] == "O" # 3ieme colonne
      return true
    end
  end

  def game_nil
    if verif != true
      puts "Match nul la partie est terminée !"
    end
  end
end



