class CreateBoardController < ApplicationController
  def create
    current_user.boards.create({code: params[:board][:code]})
    redirect_to('/all_board')
  end

  def new
    @board = Board.new
    render('new')
  end
end
