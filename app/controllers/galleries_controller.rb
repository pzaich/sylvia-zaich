class GalleriesController < ApplicationController
  before_filter :find_gallery, :only => [:show, :edit, :update]
  def show
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      flash[:success] = "Product created successfully."
      redirect_to edit_gallery_path(@gallery)
    else
      flash[:error] = "Fix error in gallery form."
      render 'new'
    end
  end

  def edit
  end

  def update
    if @gallery.update_attributes(params[:gallery])
      flash[:success] = "Updated successfully."
      redirect_to edit_gallery_path(@gallery)
    else
      flash[:error] = "Fix error in gallery form."
      render 'edit'
    end
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end
end
