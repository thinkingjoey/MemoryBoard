class BoardsController < ApplicationController
  before_action :find_board, only: [:show, :edit, :update, :destroy]
  def profile
    @board=Board.all
  end
  def show
    @board = Board.find(params[:id])
    @pictures=Picture.where(board_id: @board.id)
  end

  def new
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    if @board.save
      flash[:notice] = "Successfully created board."
      redirect_to '/profile'
    else
      render :action => 'new'
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update_attributes(params[:board])
      flash[:notice] = "Successfully updated board."
      redirect_to '/profile'
    else
      render :action => 'edit'
    end
  end

  def board_params
    params.require(:board).permit(:name)
  end

  def find_board
    @board = Board.find(params[:id])
  end
end
