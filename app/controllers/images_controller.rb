class ImagesController < ApplicationController

  def new
    @painting = Painting.find(params[:painting_id])
    @image = Image.new
    render 'new', :layout => "iframe" if params[:iframe]
  end

  def create
    @painting = Painting.find(params[:painting_id])
    @image = @painting.images.new(params[:image])
    if @image.save
      redirect_to new_painting_image_path(@painting, :iframe => true)
    else
      render 'new'
    end
  end
end
