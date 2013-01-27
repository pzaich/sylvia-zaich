module GalleriesHelper
  def render_modal(title, body, footer, object)
    render 'shared/modal', :title => title, :body => body, :footer => footer, :object => object
  end
end
