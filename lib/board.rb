require_relative 'boardcase'
require 'pry'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :BoardCase, :array_cases, :choose_case, :game_state_variable, :game_nil_variable

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")

    @game_state_variable = false

    @game_nil_variable = false

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end
  #présentation du plateau de jeu...


#
  def write_on_case (case_choose, player_symbol)
    @array_cases.map { |item| item.position == case_choose ? item.value_case = player_symbol  : item }
  end

  # This function verify each win possibilities and get the game_state_variable at true if find any
  def game_state

    if @A1.value_case == "o" && @A2.value_case == "o" && @A3.value_case == "o" || @A1.value_case == "x" && @A2.value_case == "x" && @A3.value_case == "x"
     @game_state_variable = true
    end

    # On test la 2ème ligne
    if @B1.value_case == "o" && @B2.value_case == "o" && @B3.value_case == "o" || @B1.value_case == "x" && @B2.value_case == "x" && @B3.value_case == "x"
     @game_state_variable = true
    end

    # On test la 3eme ligne
    if @C1.value_case == "o" && @C2.value_case == "o" && @C3.value_case == "o" || @C1.value_case == "x" && @C2.value_case == "x" && @C3.value_case == "x"
    @game_state_variable = true
    end

    # On test la première colone
    if @A1.value_case == "o" && @B1.value_case == "o" && @C1.value_case == "o" || @A1.value_case == "x" && @B1.value_case == "x" && @C1.value_case == "x"
     @game_state_variable = true
    end

    # On test le deuxième colone
    if @A2.value_case == "o" && @B2.value_case == "o" && @C2.value_case == "o" || @A2.value_case == "x" && @B2.value_case == "x" && @C2.value_case == "x"
     @game_state_variable = true
    end

    # On test la 3eme colone
    if @A3.value_case == "o" && @B3.value_case == "o" && @C3.value_case == "o" || @A3.value_case == "x" && @B3.value_case == "x" && @C3.value_case == "x"
     @game_state_variable = true
    end

    # On test la dagonale gauche
    if @A1.value_case == "o" && @B2.value_case == "o" && @C3.value_case == "o" || @A1.value_case == "x" && @B2.value_case == "x" && @C3.value_case == "x"
     @game_state_variable = true
    end

    # On test la diagonle droite
    if @A3.value_case == "o" && @B2.value_case == "o" && @C1.value_case == "o" || @A3.value_case == "x" && @B2.value_case == "x" && @C1.value_case == "x"
     @game_state_variable = true
    end

  end

  # Methode that verify if the board is full of "x" and "o" to stop the game as null game
  # !!! This methode is not finish
  def game_nil
    @array_cases.each { |item| item.value_case == /[:SPACE:]/ ? @game_nil_variable = true : @game_nil_variable = false }
  end

  # This is a view game. Normaly should be in a view class
  def show_board
    # Show empty board at initialization and get variable at each player turn
    puts "   1   2  3"
    puts " a #{@A1.value_case} | #{@A2.value_case} | #{@A3.value_case}"
    puts "   ---------"
    puts " b #{@B1.value_case} | #{@B2.value_case} | #{@B3.value_case}"
    puts "   ---------"
    puts " c #{@C1.value_case} | #{@C2.value_case} | #{@C3.value_case}"

  end
end