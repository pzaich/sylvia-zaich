class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_galleries

  private
    def find_galleries
      @galleries = Gallery.find(:all)
    end
end
