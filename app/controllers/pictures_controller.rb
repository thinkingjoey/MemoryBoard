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
      flash[:notice] = "Successfully created picture."
      redirect_to board_path(@picture.board_id)
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
      flash[:notice] = "Successfully updated picture."
      redirect_to @picture.board
    else
      render :action => 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "Successfully destroyed picture."
    redirect_to @picture.board
  end
end
