class BoardsController < ApplicationController
  before_action :find_board, only: [:show, :edit, :update, :destroy]

  def search
  end

  def match
    @search = params[:search]
    @board = Board.where(code: @search).first
    @has_code = true
    @picture =Picture.where(board_id: @board.id)
    render :action => 'show'
  end

  def index
    @board = Board.all
    redirect_to '/profile'
  end

  def show
    if @has_code = true #need to fix this
    @board = Board.find(params[:id])
    @picture =Picture.where(board_id: @board.id)
  end
  end

  def new
    @board =Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    @board.code = SecureRandom.hex(8).to_str
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
    if @board.update(board_params)
      redirect_to board_path(@board)
    else
      render 'edit'
    end
  end

  def destroy
    @board.destroy
    redirect_to '/profile'
  end

  def board_params
    params.require(:board).permit(:name, :user_id, :code)
  end

  def find_board
    @board = Board.find(params[:id])
  end
end
