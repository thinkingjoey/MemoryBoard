class CreateBoardController < ApplicationController
  def create
    current_user.boards.create({board_name: params[:board][:board_name]})
    redirect_to('/all_board')
  end

  def new
    @board = Board.new
    render('new')
  end
end
