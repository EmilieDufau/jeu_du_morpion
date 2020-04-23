class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value_case, :id_case
  
  value_case = ["X", "O", ""]
  x = ("1".."3").to_a #valeur des cases horizontales
  y = ("a".."c").to_a #valeur des cases verticales

  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value_case = value_case
    @x = x #cases horizontales
    @y = y #cases verticales
  end

  puts x
  puts y
  puts value_case
end

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :grid

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @case1 = BoardCase.new()
    @case2 = BoardCase.new()
    @case3 = BoardCase.new()
    @case4 = BoardCase.new()
    @case5 = BoardCase.new()
    @case6 = BoardCase.new()
    @case7 = BoardCase.new()
    @case8 = BoardCase.new()
    @case9 = BoardCase.new()
  end
@board = (@case1, ... , @case9)

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end



class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
def player (player1)
    puts "> Start game : Entrez le nom du premier joueur"
    player1 = Player.new(gets.chomp)
  end

  def player2
    puts "> Start game : Entrez le nom du second joueur"
    player2 = Player.new(gets.chomp)
  end

  
  def initialize
    #TO DO : doit régler son nom et sa valeur
  end



class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize(player1, player2)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @players = [Player.new(player1, "X"), Player.new(player2, "O") ]
    @board = Board.new
    Show.new.show_board(@board)
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end


class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end

end

#class Application
  #def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 

  #end

#end


#Application.new.perform