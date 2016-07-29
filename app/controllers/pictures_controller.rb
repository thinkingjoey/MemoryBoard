class PicturesController < ApplicationController
  def index
    @picture = Picture.all
  end

  def new
    @picture= Picture.new
    @board_id=params[:board_id]
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(params.require(:picture).permit(:image, :board_id))
    if @picture.save
      @board = Board.find(@picture.board_id)
      redirect_to "/boards/code/#{@board.code}"
    else
      render :action => 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture= Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      redirect_to @picture.board
    else
      render :action => 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to @picture.board
  end
end
