module GalleriesHelper
  def render_modal(title, body, footer)
    render 'shared/modal', :title => title, :body => body, :footer => footer
  end
end
