class PaintingsController < ApplicationController
  before_filter :find_gallery
  before_filter :find_painting, :only => [:show, :edit, :update]
  def show
  end

  def new
    @painting = @gallery.paintings.new
    respond_to do |f|
      f.js {}
    end
  end

  def create
    @painting = @gallery.paintings.new(params[:params[:painting]])
    if @painting.save
      respond_to do |f|
        f.js { render 'create'}
      end
    else
      respond_to do |f|
        f.js { render 'errors'}
      end
    end
  end

  def edit
  end

  def update
  end

  private

    def find_gallery
      @gallery = Gallery.find(params[:gallery_id])
    end

    def find_painting
      @painting = Painting.find(params[:id])
    end
end
