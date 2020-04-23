class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    output ="\n"
    for  i_columns in 0..2 do 
      for i_rows in 0..2 do
        current_case = board.BoardCases[i_rows][i_columns]
        output += current_case.content + " "
      end 
      output +=  "\n"
    end
    print output
  end

end