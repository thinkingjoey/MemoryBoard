class AllBoardController < ApplicationController
  def all_board
    @board=Board.all
  end

end
