module GalleriesHelper
  def render_modal(title, body, object)
    render 'shared/modal', :title => title, :body => body, :object => object
  end
end
